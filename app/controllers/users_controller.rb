class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    sign_in @user
    redirect_to decks_path
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
