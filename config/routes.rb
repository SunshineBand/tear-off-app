Rails.application.routes.draw do

  get "/flyers/all" => "flyers#all"
  resources :flyers do
    resources :charges
  end
  resources :profiles

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/about_us" => "home#about_us"
  get "/category/:id" => "category#show"
  get "/projects" => "home#projects"
  
  root to: "home#index"
  
end
