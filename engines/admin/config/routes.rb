Admin::Engine.routes.draw do
  root "admin_setup#index"
  resources :admin_setup, only: [:index, :edit, :update]
end
