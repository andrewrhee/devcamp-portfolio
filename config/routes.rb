Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }
  
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'


  resources :portfolios

  get 'angular-items', to: 'portfolios#angular'

  
  get 'about', to: 'pages#about'

  get 'contact', to: 'pages#contact'

  resources :blogs
  
  root to: 'pages#home'


end
