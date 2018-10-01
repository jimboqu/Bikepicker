class BikesController < ApplicationController

  before_action :get_bike, only: [:show,:edit,:update]
  
  def index
    @bikes = Bike.all
  end

  def new
  	@bike = Bike.new
  end

  def create
    @bike = Bike.new(bike_params)

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
    respond_to do |format|
      if @bike.update(bike_params)
        format.html { redirect_to @bike, notice: 'Day was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
  end

  private 

    def get_bike
      @bike = Bike.find(params[:id])
    end

    def bike_params
      params.require(:bike).permit(:name, :description)
    end

end