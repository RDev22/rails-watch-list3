Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[show new create]
end
