# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  root 'users#index'
  get  '/signup', to: 'users#new'
  resources :microposts
  resources :users

  get  '/home', to: 'static_pages#home'
  get  '/help', to: 'static_pages#help'
  get  '/about', to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
end
