Rails.application.routes.draw do
  resources :authors
  post 'authors/new',to: 'authors#create'
  root 'authors#index'
end
