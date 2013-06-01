HateMap::Application.routes.draw do
  root to: 'application#index'

  #resources :biases, only: [:show, :index]
  #resources :offenses, only: [:show, :index]

  namespace :api, defaults: {format: 'json'} do
    scope module: :v1, constraints: Router::ApiConstraints.new(version: 1, default: true) do
      resources :victim_counts, only: [:index]
    end
  end

end
