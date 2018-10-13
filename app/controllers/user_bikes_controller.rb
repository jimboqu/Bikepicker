class UserBikesController < ApplicationController
  def index
  	@bikes = Bike.where(user_id: current_user.id)
  end

  def addframe
    @bike = Bike.find(params[:bike])
    @frames = Frame.all
  end
end
