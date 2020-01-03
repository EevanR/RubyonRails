Rails.application.routes.draw do
  devise_for :users
  root controller: :articles, action: :index
  resources :articles, except: :index do
    resources :comments, only: [:create, :destroy]
  end
end