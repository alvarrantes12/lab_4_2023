Rails.application.routes.draw do
 resources :supermarkets
 scope module: :api do
  resources :products
 end
 
 root "dashboards#index"
end