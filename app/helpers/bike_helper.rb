module BikeHelper

  def sign_in
    if user_signed_in?
      link_to "Edit user", edit_user_registration_path
      link_to "Add bike", new_bike_path
      link_to "Your bikes", user_bikes_index_path
    end
  end
end
