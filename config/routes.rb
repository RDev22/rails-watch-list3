Rails.application.routes.draw do
  root to: 'lists#index'
  resources :lists, only: %i[show new create], shallow: true do
    resources :bookmarks, only: %i[create destroy]
  end
  #resources :bookmarks, only: %i[destroy]
end
