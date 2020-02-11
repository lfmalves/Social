# frozen_string_literal: true

Rails.application.routes.draw do
  resources :comments
  resources :image_posts
  resources :text_posts
  resources :posts
  resources :users

  get 'signup', to: 'users#new', as: 'signup'

  root 'posts#index'
end
