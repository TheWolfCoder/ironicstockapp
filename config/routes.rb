Rails.application.routes.draw do
  devise_for :users
  get "welcome/index"
  get 'my_portfolio', to: "users#my_portfolio"
devise_scope :user do
  authenticated :user do
    root 'welcome#index', as: :authenticated_root
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
