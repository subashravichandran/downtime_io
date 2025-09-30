Admin::Engine.routes.draw do
  root "setups#index"
  resources :setups, only: [:index, :new, :create, :destroy]
end
