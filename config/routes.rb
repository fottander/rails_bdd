Rails.application.routes.draw do
  get 'landing/index'

  root controller: :landing, action: :index

  resources :articles, only: [:show] do
    resources :comments, only: [:new]
  end
end
