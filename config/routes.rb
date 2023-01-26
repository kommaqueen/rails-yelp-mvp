Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, only: [:new, :create, :show, :index] do
    resources :reviews, only: [:create]
  end

  # get "restaurants", to: "restaurants#index"
  # # order is important
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # post "restaurants", to: "restaurants#create"
end
