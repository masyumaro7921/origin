Rails.application.routes.draw do
  resources :todos
  resources :goals
  get 'users/show'
  devise_for :users

get "users/show" => "users#show"
  root to: "home#index"
end
