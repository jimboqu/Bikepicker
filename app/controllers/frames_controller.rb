class FramesController < ApplicationController
  def index
  	@frames = Frame.all.order(:manufacturer)
  end
end
