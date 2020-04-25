class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.where(user_id: current_user.id)
    @favorites = Comment.where(user_id: current_user.id)
    @comments = Comment.where(user_id: current_user.id)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    redirect_to user_path(user)
  end
  private
  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end

end
