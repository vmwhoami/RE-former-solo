# frozen_string_literal: true

class UsersController < ApplicationController
  def new; end

  def create
    # debugger

    # @user = User.new(name: params[:name], email: params[:email], password: params[:password])

     @user = User.new(user_params)
    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :authenticity_token)
  end
end
