class BooksController < ApplicationController
    before_action :set_book, only: [:edit, :update, :show, :destroy]
    def index
        @books = Book.all
    end
    
    def new
        @book = Book.new
        3.times {@book.technologies.build}
    end

    def create
        @book = Book.new(book_params)
        respond_to do |format|
            if @book.save
                format.html { redirect_to books_path, notice: 'Votre projet est publié' }
            else
                format.html { render :new }
            end
        end
    end

    def show
        
    end
    
    def destroy
     @book.destroy
     respond_to do |format|
        format.html { redirect_to books_path, notice: 'Projet supprimé.' }
        end
    end
    

    def edit        
    end

    def update
       respond_to do |format|
            if @book.update(book_params)
                format.html { redirect_to books_path, notice: 'Votre projet est mis à jours' }
            else
                format.html { render :edit }
            end
        end 
    end
    
    





    private
    def book_params
        params.require(:book).permit(:title, :subtitle, :body, technologies_attributes:[:name])
    end
    
    def set_book
        @book = Book.find(params[:id])
    end
    
end
