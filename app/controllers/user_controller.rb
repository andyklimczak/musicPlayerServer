class UserController < ApplicationController
  # post /create_user
  # email, name, password
  # returns user if password is valid, else nil
  def create_user
    user = User.create(email: params[:email], name: params[:name], password: params[:password])
    render json: user
  end

  # post /login
  # email, password
  # returns user if password is valid, else nil
  def login_as
    user = User.where(email: params[:email])
    if user.password == params[:password]
      render json :user
    else
      render json: nil
    end
  end
end
