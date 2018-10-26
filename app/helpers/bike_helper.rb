module BikeHelper

  def sign_in
    if user_signed_in?
      link_to "Edit user", edit_user_registration_path
      link_to "Add bike", new_bike_path
      link_to "Your bikes", user_bikes_index_path
    end
  end

  def frame
    if @bike.frame 
	 @bike.frame.manufacturer + " " + @bike.frame.name 
    end 
  end

  def wheels
    if @bike.wheel
      @bike.wheel.manufacturer + " " + @bike.wheel.name
    else 
      "get some wheels"
    end
  end

  def new_bike
    if user_signed_in? 
      link_to "New bike", new_bike_path , class: "btn btn-info"
    end
  end


end
