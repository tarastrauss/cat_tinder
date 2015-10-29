Rails.application.routes.draw do

  resources :cats, only: [:index, :show]
  get '/welcome', to: 'welcome#index'
  root "welcome#index"
end
