HateMap::Application.routes.draw do
  root to: 'application#index'

  resources :bias_types, only: :show
end
