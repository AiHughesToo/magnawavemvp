Rails.application.routes.draw do
  devise_for :users
  #devise_for :users
  resources :nominations
  resources :stats
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
