class UsersController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :update ]

  def index
    redirect_to edit_user_path(current_user)
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to edit_user_path(@user), notice: t(".success")
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :profile_picture_url)
  end
end
