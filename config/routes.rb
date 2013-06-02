HateMap::Application.routes.draw do
  root to: 'application#index'

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: Router::ApiConstraints.new(version: 1, default: true) do
      resources :victim_counts, only: [:index]
      resources :biases, only: [:index]
      resources :bias_categories, only: [:index]
      resources :offenses, only: [:index]
    end
  end

end
