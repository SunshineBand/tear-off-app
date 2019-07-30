Rails.application.routes.draw do
  resources :flyers do
    resources :charges
  end
  resources :profiles

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end