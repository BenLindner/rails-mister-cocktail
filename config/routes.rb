Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :new, :create, :show, :edit] do
    resources :doses, only: [:new, :create, :destroy]
  end
  resources :ingredients, only: [:index]
end
