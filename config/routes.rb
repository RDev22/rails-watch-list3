Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[show new create], shallow: true do
    resources :bookmarks, only: %i[create destroy]
    resources :reviews, only: %i[create]
  end
  #resources :bookmarks, only: %i[destroy]
end
