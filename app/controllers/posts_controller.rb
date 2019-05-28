class PostsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create]

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(post_params)
    render json: @post
  end

  private
  def post_params
    params.require(:post).permit(:content, :user_id)
  end

end
