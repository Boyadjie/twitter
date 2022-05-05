Rails.application.routes.draw do
  resources :hashtags_to_tweets
  resources :hashtags
  devise_for :users
  resources :tweets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
