Rails.application.routes.draw do
  resources :patients
  post '/login', to: 'sessions#create',  as: 'login'
  get '/logout', to: 'sessions#destroy', as: 'logout'
  get 'pages/home'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
