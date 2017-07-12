# frozen_string_literal: true
Rails.application.routes.draw do
  resources :auctions
  resources :examples, except: [:new, :edit]
  post '/api/sign-up' => 'users#signup'
  post '/api/sign-in' => 'users#signin'
  delete '/api/sign-out/:id' => 'users#signout'
  patch '/api/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
  resources :auctions, except: [:new, :edit]
  get '/api/auctions' => 'auctions#index'
  get '/api/auctions/:id' => 'auctions#show'
  delete '/api/auctions/:id' => 'auctions#destroy'
  post '/api/auctions/' => 'auctions#create'
  patch '/api/auctions/:id' => 'auctions#update'
end
