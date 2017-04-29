Rails.application.routes.draw do
  root 'welcome#index'
  # resources :sessions, only: [:new]
  # get 'welcome/index'

  devise_for :users

  resources :show_subscriptions
  resources :news
  resources :chapters
  resources :seasons
  resources :show_reviews
  resources :chapter_views
  resources :shows
  resources :actors
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
