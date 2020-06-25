class FavoritesController < ApplicationController

  before_action :set_variables

  def create
    favorite = current_user.favorites.build(post_id: params[:post_id])
    favorite.save
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user, post_id: params[:post_id])
    favorite.destroy
  end

  private

  def set_variables
    @post = Post.find(params[:post_id])
  end

end
