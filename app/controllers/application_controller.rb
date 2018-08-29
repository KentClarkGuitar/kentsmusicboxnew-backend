class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    skip_before_action :verify_authenticity_token

    def cors_check
        headers['Access-Control-Allow-Origin'] = '*'
        headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
        headers['Access-Control-Request-Method'] = '*'
        headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization, X-Auth-Token'
    end

    def secret_key
        '5f9db1dd318a0bf80f550ae6ecc94a4293c6de05f4f4fa03aefe9b21c56e3d87a8b1008d4beaa0838c26c2c9a7b9748ac026bfeddb307593d24853cd14b470dd'
    end
end
  