Ghog711::Application.routes.draw do
  resources :albums
  resources :photos
  resources :users
  resources :sessions
  root :to => 'albums#index'
end
