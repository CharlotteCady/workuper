Rails.application.routes.draw do

  resources :users, only: [:show, :edit, :update]
  resources :articles, :questions, :ressources do
    resources :reviews, :votes, :favorites, only: [:index, :new, :create, :destroy]
  end

  ActiveAdmin.routes(self)
  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }
end
