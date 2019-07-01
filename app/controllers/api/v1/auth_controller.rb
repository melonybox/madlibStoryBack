class Api::V1::AuthController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      token = encode_token(user.id)
      render json: {user: UserSerializer.new(user), token: token}
    else
      render json: {errors: "Incorrect username or password"}
    end
  end

  def auto_login
    if session_user
      render json: session_user
    else
      render json: {errors: "Cookies have been tampered with"}
    end
  end
end
