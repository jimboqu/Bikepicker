class FramesController < ApplicationController
  def index
  	@frames = Frame.all

  	if params[:bike]
  		@bike = Bike.find(params[:bike]) 
  	end
  end
end
