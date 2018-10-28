module PagesHelper


  def jumbo_button_helper
    if user_signed_in?
      link_to "Make a Bike", new_bike_path, class: "btn btn-info"
    else
      link_to "Register", new_user_registration_path, class: "btn btn-info"
    end
  end


end
