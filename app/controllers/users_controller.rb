class UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user = User.find(session[:user_id])

    # current_user = User.find(params[:id])
    @postcount = @user.posts.count
    @posts = @user.posts.last(5)
  end

  def new
    @user = User.new
  end


  def create
   @user = User.create(user_params)
   if @user.valid?
     render json: { user: UserSerializer.new(@user) }, status: :created
   else
     render json: { error: 'failed to create user' }, status: :not_acceptable
   end
 end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :course, :city, :password_confirmation, :password)
  end
end
