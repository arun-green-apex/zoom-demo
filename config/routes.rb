Rails.application.routes.draw do
  

  
  resources :invites
  resources :rooms
  get 'home/index'
  get 'invite/new/:room_id'=>'invites#new'
  get '/redirect', to: 'invites#redirect', as: 'redirect'
  get '/callback', to: 'invites#callback', as: 'callback'

  root 'rooms#index'
  devise_for :users, :controllers =>{ registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
