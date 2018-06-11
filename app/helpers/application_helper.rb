module ApplicationHelper

   def login_helper(style = "")
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

    def nav_items
        [
          {
            url: root_path,
            title: "Home"
          },
          {
            url: about_path,
            title: "À Propos"
          },
          {
            url: contact_path,
            title: "Me contacter"
          },
          {
            url: books_path,
            title: "Portolio"
          },
          {
            url: blogs_path,
            title: "Blog"
          },  
          {
            url: actu_path,
            title: "Twitter"
          },              
        ]
    end


    def nav_helper(style, tag_type)
      nav_links = ""
      nav_items.each do |item|
        nav_links << "<#{tag_type}><a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a></#{tag_type}>"
      end
      nav_links.html_safe 
    end

end
