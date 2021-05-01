Rails.application.routes.draw do
  devise_for :users
  root 'homes#top'
  #get 'home/about', to: 'homes#about', as: :about_path
  get 'about' => 'homes#about'
  resources :users,only: [:show,:index,:edit,:update]
  resources :books
end