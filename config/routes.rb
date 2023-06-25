Rails.application.routes.draw do
  scope module: :api do
    resources :products
  end
  root "dashboards#index"
end
