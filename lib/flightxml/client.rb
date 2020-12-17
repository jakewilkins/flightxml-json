# frozen_string_literal: true

require "net/http"
require "uri"
require "base64"

require_relative "command"

require_relative "v2/client"
require_relative "v3/client"

module Flightxml
  module Client
    def self.new(username:, token:, version: 3)
      Flightxml.const_get(:"V#{version}")::Client.new(username: username, token: token)
    end
  end
end
