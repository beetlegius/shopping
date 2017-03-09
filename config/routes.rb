Rails.application.routes.draw do
  resources :products, only: %w(show)

  root to: 'products#index'
end
