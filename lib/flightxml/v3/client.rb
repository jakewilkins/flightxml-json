# frozen_string_literal: true

require_relative "types"
require_relative "operations"

module Flightxml
  module V3
    class Client
      include Flightxml::V3::Operations

      attr_reader :username, :token

      def initialize(username:, token:)
        @username, @token = username, token
      end

      def perform_operation(command)
        raw = fetch(command.uri)
        JSON.parse(raw)
      end

      def fetch(uri)
        p uri
        resp = Net::HTTP.post(uri, "", {'Authorization' => authorization_header})

        case resp
        when Net::HTTPOK
          resp.body
        else
          raise resp.body
        end
      end

      def authorization_header
        "Basic #{Base64.urlsafe_encode64("#{username}:#{token}")}"
      end
    end
  end
end
