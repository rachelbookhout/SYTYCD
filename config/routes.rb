Rails.application.routes.draw do
root to: 'dancers#index'
resources :dancers, only: [:index, :show]
end
