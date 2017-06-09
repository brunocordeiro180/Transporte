Rails.application.routes.draw do
  resources :onibuses
  resources :linha_cartaos
  resources :cartaos
  resources :cidades
  resources :linhas
  resources :empresas
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
