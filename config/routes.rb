Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :farmers, only: [:index, :create, :show, :destroy, :update]
      resources :products, only: [:index, :create, :show, :destroy, :update]
      resources :farmers_products, only: [:index, :create]
      resources :reviews, only: [:index, :create, :show, :destroy, :update]
      resources :users, only: [:index, :create, :show, :destroy, :update]
      resources :carts, only: [:index, :create, :show, :destroy, :update]
      resources :product_carts, only: [:index, :create]
    end
  end
end
