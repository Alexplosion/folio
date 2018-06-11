module BooksHelper
    def image_generator(height, width)
        "http://placehold.it/#{height}x#{width}"
    end 
    
    def book_img(img, type)
        if img.model.main_img? || img.model.thumb_img?
            img
        elsif type == "thumb"
            image_generator(350, 250)
        else 
            image_generator(750, 500)
        end
    end
end






