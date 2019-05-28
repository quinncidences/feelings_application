class ClapsController < ApplicationController
  skip_before_action :authorized, only: [:create, :index]

  def index
    @claps = Clap.all
    render json: @claps
  end

  def create
    @clap = Clap.create(clap_params)
    render json: @clap
  end


  private
  def clap_params
    params.require(:clap).permit(:post_id, :user_id)
  end

end
