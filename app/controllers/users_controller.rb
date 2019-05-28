class UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    puts 'hit create'
    puts @user.valid?
    if @user.valid?
      @token = encode_token({ user_id: @user.id })
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
      puts @token
    else
      render json: { error: 'failed to create user' }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :course, :city, :password)
  end
end
