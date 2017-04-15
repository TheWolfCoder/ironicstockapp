Rails.application.routes.draw do

   root 'users#my_portfolio'
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  resources :users, only: [:show]
  resources :friendships
  get "welcome/index"
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
  get "my_friends", to: "users#my_friends"
devise_scope :user do
  authenticated :user do
    root 'welcome#index', as: :authenticated_root
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
