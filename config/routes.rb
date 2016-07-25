Rails.application.routes.draw do
  root 'static_page#index'

  get 'sobre', to: 'static_page#sobre'
  get 'contato', to: 'static_page#contato'


end
