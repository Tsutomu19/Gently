class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @posts = @user.posts
    @favorite_posts = @user.favorite_posts
  end

  def edit
    # binding.pry
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
