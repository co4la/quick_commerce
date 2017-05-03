Rails.application.routes.draw do
  #scope module: 'api' do
  namespace :api do
    namespace :v1 do
      resources :user, only: [:show]
      resources :shop, only: [:show] do
        resources :products, only: [:index, :show]
      end
    end
  end
  #end

  #get 'shops/:id/products' => 'products#index', :as => :shop_products_path
end
