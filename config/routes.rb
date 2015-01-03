Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :users

  get '/sign-up', to: 'users#new', as: 'signup'
  post '/sign-up', to: 'users#create'

end
