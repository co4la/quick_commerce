Rails.application.routes.draw do
  #scope module: 'api' do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
      resources :shops, only: [:show] do
        resources :products, only: [:index, :show]
      end
    end
  end
  #end

  #get 'shops/:id/products' => 'products#index', :as => :shop_products_path
end
