# frozen_string_literal: true

Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :users
  root 'users#index'
end
