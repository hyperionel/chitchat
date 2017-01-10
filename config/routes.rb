Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  root 'chat_rooms#index'

  resources :chat_rooms, only: [:new, :create, :show, :index]
end
