class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def show
    @user = current_user
  end

  def edit
  end

  def update
  end
  
end
