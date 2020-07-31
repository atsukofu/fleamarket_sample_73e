class UsersController < ApplicationController

  before_action :set_user, only: [:show,:edit]

  def index
    @user = User.new
    @profile = Profile.new
  end

  def new
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  def singin
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
