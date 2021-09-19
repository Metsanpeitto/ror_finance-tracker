Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
  get 'my_portfolio', to: 'users#my_portfolio' # #my_portfolio is an action
  get 'search_stock', to: 'stocks#search'
end
