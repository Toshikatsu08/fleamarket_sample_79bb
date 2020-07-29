Rails.application.routes.draw do

  devise_for :users
  root 'toppages#index'

  resources :login, only: [:index, :new]
  resources :toppages,only: :index
  resources :new_member, only: :index
  resources :transactions, only: :index
  resources :mypages, only: :index
  resources :show_items,only: :index
end
