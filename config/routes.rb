Rails.application.routes.draw do
  get 'pages/Home'
  root :to => 'pages#home'
  resources :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
