Rails.application.routes.draw do
  get 'home/index'

  root 'home#index'

  resources :movies, only: %i(show index) do
    resources :reviews
  end

  get '/featuredMovies', to: 'movies#featured'
  get '/openingWeek', to: 'movies#opening_week'

  resources :news_pieces, only: %i(show index)

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
