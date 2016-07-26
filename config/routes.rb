Rails.application.routes.draw do
  
  resources :users
  root 'static_page#index'

  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'

  get 'entrar', to: 'sessions#new'
  post 'entrar', to: 'sessions#create'
  delete 'sair', to: 'sessions#destroy'


end
