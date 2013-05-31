HateMap::Application.routes.draw do
  root to: 'victim_counts#index'

  resources :biases, only: [:show, :index]
  resources :offenses, only: [:show, :index]

end
