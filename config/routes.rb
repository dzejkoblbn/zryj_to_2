Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :ulices
  resources :obszaries
  resources :produkts
  resources :restauracjas
  resources :uzytkowniks
  resources :typs
  resources :zamowienies
  resources :koszyks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
