class CommentsController < ApplicationController
  def create
    comment = current_user.comments.build(comment_params)
    comment.post_id = (params[:post_id])
    comment.save
    redirect_back(fallback_location: posts_path)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_back(fallback_location: posts_path)
  end
  private

  def comment_params
    params.require(:comment).permit(:body)


  end

end
