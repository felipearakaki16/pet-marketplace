Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "/components", to: "pages#components"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :admin do 
    resources :users, only: [ :show ]
  end
  resources :products, except: :destroy do
    collection do
      get :dog
      get :cat
      get :fish
      get :rodent
    end
  end
  resources :orders, only: %i(index show create update)
end
