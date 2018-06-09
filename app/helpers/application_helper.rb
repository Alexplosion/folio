module ApplicationHelper

   def login_helper(style)
      if current_user.is_a?(GuestUser) 
       link_to "Register", new_user_registration_path, class: style 
       link_to "Login", new_user_session_path, class: style 
     else 
      link_to "Logout", destroy_user_session_path, method: :delete, class:style
     end 

    end


    def source_helper(layout_name)
     if session[:source]
        visite = "visiting from #{session[:source]} and on the #{layout_name} page"
        content_tag(:p,visite, class: "source-visite")
     end 
    end

    def copyright_generator
        @copyright = YamViewTool::Renderer.copyright("Alexandre Yameogo","Tous droits réservés")

    end
    
end
