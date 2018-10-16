Rails.application.routes.draw do
  resources :providers
  resources :shippers
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
