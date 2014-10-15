class UserController < ApplicationController
  # post /login
  # email, password
  # returns user if password is valid, else nil
  def get_user
    user = User.find_or_create_by(email: params[:email], name: params[:name])
    if not user.nil?
      render json: user
    else
      render json: nil
    end
  end
end
