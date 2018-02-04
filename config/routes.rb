Rails.application.routes.draw do
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
