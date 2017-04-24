Rails.application.routes.draw do
  #scope module: 'api' do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :show]
    end
  end
  #end
end
