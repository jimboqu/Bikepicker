class FramesController < ApplicationController
  def index
  	@frames = Frame.all.order(:manufacturer)
  end

  def show
    @frame = Frame.find(params[:id])
  end
end
