Rails.application.routes.draw do
  get 'reviews/index'
  devise_for :users
  root to: "homes#index"
  resources :ramen_shops, only: [:index, :show]
end
