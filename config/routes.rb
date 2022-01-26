Rails.application.routes.draw do
  resources :select_places
  resources :otoiawases
  resources :users
  resources :weathers

  # get 'home/top'
  get '/',  to: 'home#top'
  root 'home#top'

  resources :comments
  resources :places
  resources :club_names
  resources :clubs
  get 'home/login'
  get 'home/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
