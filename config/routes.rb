Rails.application.routes.draw do
  root to: 'messages#index'
  devise_for :users

  resources :messages, :only => [:index, :new, :create, :show]
  resources :contacts
end
