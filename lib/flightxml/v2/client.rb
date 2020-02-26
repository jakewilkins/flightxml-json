# frozen_string_literal: true

require_relative "operations"
require_relative "types"

module Flightxml
  module V2
    class Client
      include Flightxml::V2::Operations

      attr_reader :username, :token

      def initialize(username:, token:)
        @username, @token = username, token
      end

      def perform_operation(command)
        raw = fetch(command.uri)
        JSON.parse(raw)
      end

      def fetch(uri)
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
