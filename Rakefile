require "bundler/gem_tasks"

require_relative "lib/flightxml/json/generator"


namespace :flightxml do
  desc "Regenerate FlightXML types from WSDL"
  task :generate do
    v3_generator = Flightxml::Json::Generator.new(version: 3)
    v3_generator.run

    v2_generator = Flightxml::Json::Generator.new(version: 2)
    v2_generator.run

    if ENV['DEBUG']
      require 'pry'; binding.pry
    end
  end
end

task :default => :'flightxml:generate'
