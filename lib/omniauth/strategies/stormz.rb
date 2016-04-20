require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Stormz < OmniAuth::Strategies::OAuth2
      option :name, "stormz"

      option :client_options, {
        :site => 'https://api.stormz.me',
        :authorize_url => 'https://stormz.me/oauth/authorize',
        :token_url => 'https://stormz.me/oauth/token'
      }

      uid { raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/v1/user/me').parsed
      end

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end
