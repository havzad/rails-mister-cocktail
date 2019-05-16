Rails.application.routes.draw do
resources :cocktails do
    resources :ingredients, only: [:edit, :create]
    resources :doses, only: [:edit, :create]
  end
end

