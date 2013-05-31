HateMap::Application.routes.draw do
  root to: 'victim_counts#index'

  resources :biases, only: [:show, :index]
  resources :offenses, only: [:show, :index]
  # /api/v3/turtle/powers
  # /api/turtle/powers

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: Router::ApiConstraints.new(version: 1, default: true) do
      resources :victim_counts
    end
  end

end
