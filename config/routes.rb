Rails.application.routes.draw do
  get 'welcome/index'

  resources :itinerario_metros
  resources :itinerarios
  resources :estacaos
  resources :estacao_metros
  resources :metros
  resources :linha_metros
  resources :empresas
  resources :condutors
  resources :cobradors
  resources :onibuses
  resources :linha_cartaos
  resources :cartaos
  resources :cidades
  resources :linhas
  resources :usuarios

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
