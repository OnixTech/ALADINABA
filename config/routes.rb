Rails.application.routes.draw do
  get 'dashboards/show'
  get 'carpets/index'
  get 'carpets/new'
  get 'carpets/create'
  get 'carpets/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :carpets do
    # resources :reviews, only: [:create, :destroy, :edit, :update]
    resources :bookings, only: [:new, :create] do
      # resources :reviews, only: [:new]
    end
  end
  resources :bookings, only: [:edit, :update]
  resources :dashboards, only: [:show]
  devise_for :users
  # root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "pages#home"
end
