Rails.application.routes.draw do
  # get 'landing/index'
  root controller: :articles, action: :index
  resources :articles, only: [:new, :create]
end


