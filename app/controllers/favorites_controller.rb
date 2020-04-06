class FavoritesController < ApplicationController

  def create
    favorite = current_user.favorites.build(post_id: params[:post_id])
    favorite.save
    redirect_back(fallback_location: posts_path)
  end

  def destroy
    favorite = Favorite.find_by(user_id: current_user, post_id: params[:post_id])
    favorite.destroy
    redirect_back(fallback_location: posts_path)
  end
end
