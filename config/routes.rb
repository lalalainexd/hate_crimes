HateMap::Application.routes.draw do
  root to: 'application#index'

  resources :bias_types, only: :show do
    resources :biases, only: :show
  end

end
