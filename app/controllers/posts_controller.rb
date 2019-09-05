class PostsController < ApplicationController
  def index
    @posts = current_user.posts.all
  end

  def new
    @post = current_user.post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
  Post.create(post_params)
  redirect_to root_path
  end

  def destroy
    @post = current_user.posts.find(params[:id])
    @post.destroy

    redirect_to user_path(current_user)
  end

private
  def post_params
  params.require(:post).permit(:description, :avatar, :user_id, :video)
  end

end
