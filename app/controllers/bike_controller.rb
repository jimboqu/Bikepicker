class BikesController < ApplicationController
  
  def index
  end



  def new
  	@bike = Bike.new
  end

  def create
    if @bike.save
      redirect_to @bike
    else 
      render 'new'
    end
  end

  def show
  end

  def edit

  end

  def update

  end

  def destroy
  end
end
