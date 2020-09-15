
class UsersController < ApplicationController
  before_action :find_user, only: [:edit, :update]
  def new
  @user = User.new
  end

  def create
 
     @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @user.update(user_params)
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :authenticity_token)
  end
end
