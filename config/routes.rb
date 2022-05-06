# frozen_string_literal: true

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'articles#index'

  # articles
  get 'articles', to: 'articles#index', as: 'articles'
  get 'articles/new', to: 'articles#new', as: 'article_new'
  post 'articles', to: 'articles#create'
  get 'articles/:id/edit', to: 'articles#edit', as: 'article_edit'
  get 'articles/:id', to: 'articles#show', as: 'article'
  patch 'articles/:id', to: 'articles#update'
end
