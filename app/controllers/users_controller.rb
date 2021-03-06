class UsersController < ApplicationController

  def index
  end


  def show
    @user = User.new
  end

  def logout
  end
  
  def profile   
  end

  def profile_update
    if @user.update(user_params)
      redirect_to user_path
    else
      render :profile
    end
  end

  def mypage
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password)
  end

  def profile_params
    params.require(:profile).permit(:first_name, :family_name, :first_name_kana, :family_name_kana, :birth_year, :birth_month, :birth_day)

  end

  def address_params
    params.require(:address).permit(:post_cord, :prefecture_id, :city, :building_name, :house_number, :telephone_number)
  end


end