Rails.application.routes.draw do
  # rails acive records
  # A visitor can see the list of all restaurants.
  # this creates the seven crud things but only selects index
  resources :restaurants, only: [:index, :new, :show] do
    resources :reviews, only: [:new, :create]
  end
end
