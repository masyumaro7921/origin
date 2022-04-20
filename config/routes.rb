Rails.application.routes.draw do
  resources :articles
  resources :todos
  resources :goals
  resources :goals do
    resources :todos do
      member do
        get "sort"
      end
    end
  end  
  get 'users/show'
  devise_for :users, controllers: { registrations: 'registrations' }

get "users/show" => "users#show"

  root to: "home#index"
end
