Rails.application.routes.draw do
  get 'reviews/new'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :inflatables do
    resources :bookings, only: %i[new create]
    resources :reviews, only: [:new, :create]
  end
  resourcers :reviews, only: [:destroy]
  resources :bookings, only: %i[show destroy update]

  get 'home', to: 'pages#home'
  get 'dashboard', to: 'pages#dashboard'
end
