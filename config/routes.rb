Rails.application.routes.draw do
  resources :operations, only: [:show], defaults: { format: 'json' } do
    get :custom
    resources :catches, only: [:show, :index], defaults: { format: 'json' }, controller: "operations/catches" do
      # resource :environment, only: [:show], defaults: { format: 'json '}, controller: "operation/catch/environment"
      resources :specimen, only: [:index], defaults: { format: 'json '}, controller: "operations/catches/specimen"
    end
  end

  root "main#index"
  post "data/new", controller: "data"
  
end
