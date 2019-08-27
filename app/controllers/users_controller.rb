class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
     @posts = current_user.posts.order(created_at: :desc)
     # @user = @user.posts.order(created_at: :desc)
  end

  def edit
    #   if @user
    #     respond_to do |format|
    #      format.html
    #    end
    #  else
    # redirect_to users_path
    # end
  end

  def update
     @user = User.find(params[:id])
     if @user.update_attributes(user_params)
       flash[:success] = "Profile updated"
       redirect_to root_path
     else
       render 'edit'
     end
  end

  private

  def user_params
    params.require(:user).permit(:username, :name, :website,
                        :bio, :email, :phone, :gender, :avatar)
  end

end
