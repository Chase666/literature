Rails.application.routes.draw do
  resources :authors,:reviews
  post 'authors/new',to: 'authors#create'
  post 'reviews/new',to: 'reviews#create'
  root 'authors#index'
end
