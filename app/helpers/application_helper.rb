module ApplicationHelper
	def login_helper
	  if user_signed_in? 
        link_to "Log out", destroy_user_session_path, method: :delete
      else 
        (link_to "Log in", new_user_session_path) + 
        (link_to "Sign up", new_user_registration_path)  
      end 
	end

    def logged_in_nav_helper
      if user_signed_in? 
        link_to "My Bikes", user_bikes_index_path(current_user.id), class: "nav-link"
        link_to "Log out", destroy_user_session_path, method: :delete, class: "nav-link"
        else 
        (link_to "Sign in", new_user_session_path, class: "nav-link") +
        (link_to "Register", new_user_registration_path, class: "nav-link")
      end
    end
	      
end
