# frozen_string_literal: true

Rails.application.routes.draw do
  resources :questions
  resources :users
  get 'users/new'
  get 'users/create'
  get 'home/index'
  get 'home/login'
  post 'home/login'
  root 'home#index'
  # root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
