Rails.application.routes.draw do

resources :videofeeds

  devise_for :users #should this be first?
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "videofeeds#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
