class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = post.find(session[:user_id])
    @signed_in_user = session[:user_id]

    # you need to define @post and @comment
    @post = Post.find params[:id]
    @post = Post.new(post: @post)
  end

  def create
  Post.create(post_params)
  redirect_to root_path
  end

private
  def post_params
  params.require(:post).permit(:description, :image, :user_id)
  end

end
