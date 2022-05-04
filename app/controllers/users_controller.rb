class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def create
  end

  def new
  end
  
  def edit
  end

  def update
  end
  
  def destroy
  end

  def is_admin_user_or_current_user
    if !current_user.admin || current_user.id != params[:id]
    redirect_to friends_path, notice: "Not Authorized"
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation, :remember_me)
  end


end
