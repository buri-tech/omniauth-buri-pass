require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class BuriPass < OmniAuth::Strategies::OAuth2
      option :name, "buri_pass"
      option :client_options, { site: "https://pass.buri.io" }
      option :authorize_params, { scope: "openid profile email" }

      uid { raw_info["sub"] }

      info do
        {
          given_name: raw_info["given_name"],
          family_name: raw_info["family_name"],
          email: raw_info["email"],
          email_verified: raw_info["email_verified"],
          updated_at: raw_info["updated_at"]
        }
      end

      extra { { raw_info: raw_info } }

      def raw_info
        @raw_info ||= access_token.get("oauth/userinfo").parsed
      end
    end
  end
end
