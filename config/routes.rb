Rails.application.routes.draw do
  resources :authors,:reviews,:biocards
  post 'authors/new',to: 'authors#create'
  post 'reviews/new',to: 'reviews#create'
  post 'biocards/new',to: 'biocards#create'
  root 'authors#index'
end
