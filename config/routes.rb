Rails.application.routes.draw do
 
  get 'chats/show'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'homes#index'
  resources :reactions, only: [:create]
  resources :matching, only: [:index]
  get 'chat/:id', to: 'chats#show', as: 'chat'
  resources :chats, only: [:create]
  resources :chat_rooms, only: [:create, :show]
end
