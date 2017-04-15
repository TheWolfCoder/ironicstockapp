Rails.application.routes.draw do

   root 'users#my_portfolio'
  devise_for :users, :controllers => { :registrations => "user/registrations" }
  resources :user_stocks, except: [:show, :edit, :update]
  get "welcome/index"
  get 'my_portfolio', to: "users#my_portfolio"
  get 'search_stocks', to: "stocks#search"
devise_scope :user do
  authenticated :user do
    root 'welcome#index', as: :authenticated_root
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
