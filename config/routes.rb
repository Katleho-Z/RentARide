Rails.application.routes.draw do
  devise_for :users
  root to: "cars#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"\
  resources :cars do
    resources :bookings, only: [:new, :create]
  end

  get '/search_cars', to: 'cars#search', as: 'search_cars'
  get '/bookings', to: 'bookings#index', as: 'bookings'


  resources :bookings, only: [:index, :show]

end
