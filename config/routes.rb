Rails.application.routes.draw do
  mount Knock::Engine => "/knock"
  resources :operations, only: [:show], defaults: { format: 'json' } do
    resources :catches, only: [:show, :index], defaults: { format: 'json' }, controller: "operation/catches" do
      resource :environment, only: [:show], defaults: { format: 'json '}
      resources :specimen, only: [:show, :index], defaults: { format: 'json '}
    end
  end

  root "main#index"
  post "data/new", controller: "data"
  
end
