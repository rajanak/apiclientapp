require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Doorkeeper < OmniAuth::Strategies::OAuth2
      option :name, :doorkeeper
      option :client_options, {
        site:          'http://localhost:3001',
        authorize_url: 'oauth/authorize'
      }
      uid { raw_info["id"] }

       info do
        { name: raw_info["name"] }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/websites/9d44d4da-5385-470e-a472-fa409dfa483c').parsed
      end
    end
  end
end
