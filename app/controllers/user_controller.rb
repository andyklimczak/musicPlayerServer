class UserController < ApplicationController
  # post /login
  # email, password
  # returns user if password is valid, else nil
  def get_user
    user = User.find_or_create_by(user_params)
    if not user.nil?
      render json: user
    else
      render json: nil
    end
  end
  private
  def user_params
    params.require(:user).permit(:email, :name)
  end
end
