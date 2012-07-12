Ghog711::Application.routes.draw do
  resources :albums
  resources :photos
  resources :users
  root :to => 'albums#index'
end
