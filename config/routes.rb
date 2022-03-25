Rails.application.routes.draw do
  resources :phone_directories
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'home#index'
  get 'about', to: "home#about"
end
