Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :movies, only: %i(show index)
  get '/featuredMovies', to: 'movies#featured'
  get '/openingWeek', to: 'movies#opening_week'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
