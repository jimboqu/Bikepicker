class BikesController < ApplicationController

  before_action :get_bike, only: [:show,:edit,:update, :destroy]
  
  def index
    @bikes = Bike.all
  end

  def new
  	@bike = Bike.new
    @bike = current_user.bikes.build
  end

  def create
    @bike = current_user.bikes.build(bike_params)

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
    if @bike.destroy
      redirect_to bikes_path
    end
  end

  def addframe
    @frame = Frame.find(params[:frame_id])
    @bike = Bike.find(params[:bike_id])
    
    redirect_to @bike
  end

  private 

    def get_bike
      @bike = Bike.find(params[:id])
    end

    def bike_params
      params.require(:bike).permit(:name, :description, :user_id)
    end

end
