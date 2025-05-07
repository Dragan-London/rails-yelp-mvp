Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # get '/task', to: 'tasks#index'
  #index: Corresponds to GET /restaurants (List all restaurants).
  #show: Corresponds to GET /restaurants/:id (Show details of a specific restaurant).
  #new: Corresponds to GET /restaurants/new (create a new restaurant)
  #create: Corresponds to POST /restaurants (Handle submission of the new restaurant form).
    # A visitor can add a new review to a restaurant
    # GET "restaurants/:restaurant_id/reviews/new" (e.g., "restaurants/38/reviews/new")
    # POST "restaurants/:restaurant_id/reviews" (e.g., "restaurants/38/reviews")

  resources :restaurants, only: [:index, :show, :new, :create] do
    resources :reviews, only: [:new, :create]
  end
end
