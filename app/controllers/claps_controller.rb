class ClapsController < ApplicationController

  def index
    @claps = Clap.all
    render json: @claps
  end

end
