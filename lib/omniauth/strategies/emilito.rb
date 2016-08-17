require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Emilito < OmniAuth::Strategies::OAuth2
      option :name, :emilito

      option :client_options, {
        site: 'http://emilito.io',
        authorize_url: '/oauth/authorize'
      }

      def callback_url
        full_host + script_name + callback_path
      end

      uid { nil }

      info do
        { email: raw_info['email'] }
      end

      def raw_info
        {}
      end
    end
  end
end

OmniAuth.config.add_camelization 'emilito', 'Emilito'
