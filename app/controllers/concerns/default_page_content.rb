module DefaultPageContent
 extend ActiveSupport::Concern
   
 included do
    before_action :set_page_title
   end
 
  def set_page_title
    @book_title = "Portfolio"
  end
    
end