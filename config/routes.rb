Rails.application.routes.draw do
  resources :users
  resources :weathers

  # get 'home/top'
  get '/',  to: 'home#top'

  resources :comments
  resources :places
  resources :club_names
  resources :clubs
  get 'home/login'
  get 'home/logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
