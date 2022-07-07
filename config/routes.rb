Rails.application.routes.draw do
  # rails acive records
  # A visitor can see the list of all restaurants.
  # this creates the seven crud things but only selects index
  resources :restaurants, only: [:index, :new, :show, :create] do
    # This nests the reviews into the restaurants with the 2 methods
    resources :reviews, only: [:new, :create]
  end
end
