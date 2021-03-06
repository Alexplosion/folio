Rails.application.routes.draw do
  devise_for :users , path: '', path_names: {sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  resources :books, except: [:show]
  get "book/:id", to: "books#show", as: "book_show"


  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "actu", to: "pages#actu"

  resources :blogs do 
    member do 
      get :toggle_status
    end
  end
  
  root to: "pages#home"
end
