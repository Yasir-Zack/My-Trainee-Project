Rails.application.routes.draw do
  devise_for :users
  resources :trainees
  root 'trainees#index'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
