# frozen_string_literal: true

module Flightxml
  class Command
    URL = "http://flightxml.flightaware.com/json/FlightXML"

    attr_reader :command, :result_class, :parameters

    def initialize(command:, result:, version:, parameters:)
      @command, @result_class, @version, @parameters = command, result, version, parameters
    end

    def uri
      URI("#{URL}#{@version}/#{command}?#{param_string}")
    end

    def param_string
      present_params = parameters.delete_if {|k, v| v.nil?}
      URI.encode_www_form(present_params)
    end
  end
end
