Admin::Engine.routes.draw do
  root "setups#index"
  resources :setups, only: [:index, :new, :create, :edit, :update, :destroy]
end
