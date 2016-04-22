Rails.application.routes.draw do
  mount Knock::Engine => "/knock"
  resources :operation, only: [:show], defaults: { format: 'json' } do
    resources :catches, only: [:show, :index], defaults: { format: 'json' } do
      resources :specimen, only: [:show, :index], defaults: { format: 'json '}
    end
  end

  root "main#index"
  post "data/new", controller: "data"
  
end
