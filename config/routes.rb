Rails.application.routes.draw do
  root( { to: "restaurants#index" } )
  resources :restaurants, except: [:destroy, :edit, :update] do
    resources :reviews, only: [:new, :create]
  end

  # nesting reviews into restaurants will automatically generates
  # "/restaurants in front of reviews


  # # all restaurants
  # GET "restaurants", to: "restaurants#index"

  # # create a new restaurant
  # GET "restaurants/new", to: "restaurants#new"
  # POST "restaurants", to: "restaurants#create"

  # # show a restaurant
  # GET "restaurants/:id", to: "restaurants#show"

  # create a new review
  # GET "restaurants/:id/reviews/new", to "reviews#new"
  # POST "restaurants/:id/reviews", to "reviews#create"


end
