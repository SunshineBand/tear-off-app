Rails.application.routes.draw do
  resources :flyers
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/about_us" => "home#about_us"
  root to: "home#index"

end
