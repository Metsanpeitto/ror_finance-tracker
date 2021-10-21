Rails.application.routes.draw do
  resources :user_stocks
  get 'welcome/index'
  devise_for :users
  root 'welcome#index'
end
