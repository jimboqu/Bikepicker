class UserBikesController < ApplicationController
  def index
  	@bikes = Bike.where(user_id: current_user.id)
  end
end
