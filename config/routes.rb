Rails.application.routes.draw do
  resources :favorites
  resources :reviews
  resources :posts
  resources :influencers
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/login', to:'sessions#create'
  delete '/logout', to:'sessions#destroy'
  get '/me', to: 'users#show'
  post '/signup', to: 'users#create'
end
