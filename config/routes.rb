Rails.application.routes.draw do
  root to: "home#index"
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :theaters
  resources :shows
  get "forbiddenAccess", to: 'display_error#forbidden'
end
