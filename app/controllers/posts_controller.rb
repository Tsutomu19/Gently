class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
    @user = User.find(@post.user.id)
    @comments = @post.comments
    @comment = Comment.new
    @emoji = TextSentimentAnalysis.new.add_emoji(@post.score, 'Magnitude')
  end

  def new
    @post = Post.new
    @post.body = (params[:content])
  end

  def create
    text_sentiment_analysis = TextSentimentAnalysis.new
    score = text_sentiment_analysis.sentiment_from_text(post_params[:body])
    post = Post.new(post_params)
    post.score = score
    post.user_id = current_user.id
    if post.save
      redirect_to post_path(post.id)
    else
      @post = Post.new(post_params)# 直前の編集内容を表示
      render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    text_sentiment_analysis = TextSentimentAnalysis.new
    score = text_sentiment_analysis.sentiment_from_text(post_params[:body])
    if post.update(post_params)
      redirect_to post_path(post)
    else
      @post = Post.find(params[:id])
      render 'edit'
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:title, :body)
    end
end
