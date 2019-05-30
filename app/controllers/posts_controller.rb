class PostsController < ApplicationController
  skip_before_action :authorized, only: [:index, :create, :destroy]

  def index
    @posts = Post.all
    render json: @posts
  end

  def create
    @post = Post.create(post_params)
    render json: @post
  end

  def destroy
    @post_id = params[:post][:id].to_i
    @post = Post.find(@post_id)
    @post.destroy
  end

  private
  def post_params
    params.require(:post).permit(:content, :user_id)
  end

end
