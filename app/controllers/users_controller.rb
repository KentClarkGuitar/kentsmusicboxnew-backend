class UsersController < ApplicationController 
    # before_action :cors_check

    def create
        p '*' * 100
        p params
        p '*' * 100

       user = User.new(
           name: params[:name],
           email: params[:email],
           password: params[:password],
           password_confirmation: params[:password_confirmation]
       )
       if user.save
        payload = { user_id: user.id }
        jwt = JWT.encode(payload, secret_key)
        # p jwt
        # render json: user, status: :created
        render json: jwt.to_json, status: :ok
       else
        render json: {errors: user.errors}, status: :unprocessable_entity 
       end
    end

    def login
        @user = User.find({email: params.email})
        puts @user
        render json: @user
    end
    
    private

    def user_params
        params.permit(:email, :password, :password_confirmation, :name)
    end


end