Rails.application.routes.draw do
  mount Knock::Engine => "/knock"
  root 'main#index'
end
