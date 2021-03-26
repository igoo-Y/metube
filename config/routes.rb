Rails.application.routes.draw do
  resources :videos

  devise_for :users

  root "videos#index"

  get 'igoo' => 'videos#index'
  match 'igoo' => 'videos#index', via: :get
  match 'igoo' => 'videos#index', via: [:get, :post]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
