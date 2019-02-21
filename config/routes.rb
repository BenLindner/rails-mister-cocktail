Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show, :edit, :destroy] do
    resources :doses, only: [:new, :create]
  end
  resources :ingredients, only: [:index] do
    resources :doses, only: [:new, :create]
  end
end
