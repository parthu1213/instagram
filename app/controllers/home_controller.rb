class HomeController < ApplicationController
  before_action :authenticate_user!
  @posts = Post.order(created_at: :desc).page(params[:page]).per(5)
  
  def index
    @posts = Post.order(created_at: :desc)
  end

  def new
  end

end
