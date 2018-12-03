Rails.application.routes.draw do
  root to: 'paghes#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # #http//localhost3000/user/user_id/offers/index
  # get 'user/user_id/offers/index' to: 'offers#index'

  # #http//localhost3000/user/user_id/offers/
  # get 'user/user_id/offers/offers_id' to: 'offers#show'

  # #http//localhost3000/user/user_id/offers/new
  # get 'user/user_id/offers/new' to: 'offers#new'

  # #http//localhost3000/user/user_id/offers
  # post 'user/user_id/offers/' to: 'offers#create'

  # #http//localhost3000/user/offer/offer_id/edit
  # get 'user/user_id/offers/offers_id/edit' to: 'offers#edit'

  # #http//localhost3000/user/user_id/offer/offer_id/update
  # patch 'user/user_id/offers/offers_id' to: 'offers#update'

  # #http//localhost3000/user/user_id/offer/offer_id/update
  # delete 'user/user_id/offers/offers_id' to: 'offers#destroy'


  resources :users, only: [:show, :edit, :update, :destroy] do
    resources :offers, only: [:index, :new, :create]
  end

  resources :offers, only: [:index,:show, :edit, :update, :destroy] do
    resources :bookings, only: [:index, :new, :create]
  end

  resources :bookings, only: [:index,:show, :edit, :update, :destroy] do
    resources :reviews, only: [:index, :new, :create]
  end
end

