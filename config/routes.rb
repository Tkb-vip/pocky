Rails.application.routes.draw do
  resources :weathers
  # get 'home/top'
  get '/',  to: 'home#top'

  resources :comments
  resources :places
  resources :club_names
  resources :clubs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
