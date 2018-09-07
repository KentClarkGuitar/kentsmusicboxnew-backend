class SessionsController < ApplicationController 
    def create
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            payload = {user: user.to_json}
            jwt = JWT.encode(payload, secret_key)
            render json: {jwt:jwt}, status: :ok
        else 
            render json: {error: 'invalid credentials'}, status: :unauthorized
        end
    end
end