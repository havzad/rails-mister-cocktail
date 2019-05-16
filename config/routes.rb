Rails.application.routes.draw do
  resources :cocktails do
    resources :ingredients, only: [:edit, :create]
    resources :doses, only: [:create, :new]
  end
  resources :doses, only: [:destroy]
end
