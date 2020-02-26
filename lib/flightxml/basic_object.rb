# frozen_string_literal: true

module Flightxml
  module BasicObject
    module ClassMethods
      def required_attributes
        @required_attributes ||= []
      end

      def attributes
        @attributes ||= []
      end

      def attributes=(args)
        @attributes = args

        args.each do |attr|
          send(:attr_accessor, attr[:name])
        end
      end

      def attribute_names
        @attributes.map { |attr| attr[:name] }
      end

      def readonly!(*args)
        args = args.empty? ? attributes : args

        args.each { |attr| send(:private, attr) }
      end

      def paramable?
        true
      end
    end

    def self.included(base)
      base.extend(ClassMethods)
    end

    def initialize(**args)
      attribute_names.each do |attr|
        value = args[attr]
        set_attribute(attr, value)
      end
    end

    def set_attribute(name, value)
      attr_spec = fetch_attribute_spec(name)
      value = format_value(attr_spec, value)

      if !value && attr_spec[:required]
        raise ArgumentError, "#{self.class.name} - Missing required attribute '#{name}'"
      end

      if attr_spec[:array]
        unless send(attr_spec[:name])
          send("#{attr_spec[:name]}=", [])
        end
        send(attr_spec[:name]).concat([value])
      else
        send("#{attr_spec[:name]}=", value)
      end
    end

    def format_value(spec, value)
      klass = if Flightxml3::Types.constants.include?(spec[:type])
        Flightxml3::Types.const_get(spec[:type])
      end

      klass ? klass.new(value) : value
    end

    def fetch_attribute_spec(name)
      self.class.attributes[name]
    end

    def attribute_names
      self.class.attributes_names
    end
  end
end
