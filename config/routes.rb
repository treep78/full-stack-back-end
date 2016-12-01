# frozen_string_literal: true
Rails.application.routes.draw do
  resources :card_links, except: [:new, :edit]
  resources :decks, except: [:new, :edit]
  resources :combinations, except: [:new, :edit]
  resources :hands, except: [:new, :edit]
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  resources :cards, only: [:index, :show, :create, :update, :destroy]
end
