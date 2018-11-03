Rails.application.routes.draw do
  devise_for :administradors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#index'
  resources :productos
  resources :pages, only:[:index]
end
