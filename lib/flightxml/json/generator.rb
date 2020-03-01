# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'rexml/document'
require 'erb'
require 'pathname'
require 'digest'

# require_relative "../../operations"

module Flightxml
  module Json
    class Generator
      CURRENT_WSDL_MD5_PATH = Pathname.new(__FILE__).dirname.dirname.dirname.dirname

      TYPE_TEMPLATE = Pathname.new(__FILE__).dirname.join("generator/type_template.erb")
      OPERATION_TEMPLATE = Pathname.new(__FILE__).dirname.join("generator/operations_template.erb")

      LIB_DIR = Pathname.new(__FILE__).dirname.dirname

      def initialize(version:)
        @version = version

        if version == 3
          @prefix = "FlightXML3"
          @url = URI("http://flightxml.flightaware.com/soap/FlightXML3/wsdl")
        else
          @prefix = "FlightXML2"
          @url = URI("http://flightxml.flightaware.com/soap/FlightXML2/wsdl")
        end

        @wsdl = nil
        @type_definitions = []
        @operation_definitions = []
        @request_classes = {}
      end

      def run
        fetch_wsdl
        return if same_wsdl?

        gather_type_definitions
        generate_type_definitions

        gather_operation_definitions
        generate_operation_definitions

        write_new_md5
      end

      def gather_type_definitions
        @wsdl.root.each_element("wsdl:types/xs:schema/xs:complexType") do |element|
          name = element.attributes["name"]
          definition = {name: name, attributes: []}
          is_a_request = name.include?('Request')

          element.each_element("xs:sequence/xs:element") do |attr|
            attrs = attr.attributes
            required = !(attrs['minOccurs'].to_i < 1)
            array = attrs['maxOccurs'].to_i != 1
            type = attrs['type'].match?(/#{@prefix}/) ? attrs['type'].gsub(/#{@prefix}:/, '') : attrs['type'].gsub(/xs:/, '')

            definition[:attributes] << {name: attrs['name'], required: required, array: array, type: type}
          end

          if is_a_request
            @request_classes[name] = definition
          else
            @type_definitions << definition
          end
        end
      end

      def generate_type_definitions
        template = ERB.new(TYPE_TEMPLATE.read)
        result = template.result(binding)
        LIB_DIR.join("v#{@version}/types.rb").write(result)
      end

      def gather_operation_definitions
        @wsdl.root.each_element("wsdl:portType/wsdl:operation") do |element|
          operation = element.attributes['name']
          input, output = element.elements.each {|e| }.to_a.map { |e| e.attributes['message'].gsub(/#{@prefix}:/, '').gsub(/In$/, '').gsub(/Out$/, 'Results')}

          definition = {name: operation, in: input.to_sym, out: output.to_sym}
          @operation_definitions << definition
        end
      end

      def generate_operation_definitions
        template = ERB.new(OPERATION_TEMPLATE.read)
        result = template.result(binding)
        LIB_DIR.join("v#{@version}/operations.rb").write(result)
      end

      def fetch_wsdl
        resp = Net::HTTP.get_response(@url)
        raise "Failed to fetch WSDL" unless resp.is_a?(Net::HTTPSuccess)
        body = resp.body

        @fetched_digest = generate_digest(body)

        @wsdl = REXML::Document.new(body)
      end

      def same_wsdl?
        current_md5 = CURRENT_WSDL_MD5_PATH.join("v#{@version}_wsdl_checksum.txt").read.chomp rescue ""
        current_md5 == @fetched_digest
      end

      def write_new_md5
        CURRENT_WSDL_MD5_PATH.join("v#{@version}_wsdl_checksum.txt").write(@fetched_digest)
      end

      def generate_digest(body)
        md5 = Digest::MD5.new
        md5.update(body)
        md5.hexdigest
      end

      def operation_url(operation)
        if @version == 3
          "https://flightaware.com/commercial/flightxml/v3/apiref.rvt#op_#{operation}"
        else
          "http://flightxml.flightaware.com/soap/FlightXML2/doc#op_#{operation}"
        end
      end
    end
  end
end
