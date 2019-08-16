Rails.application.routes.draw do

  authenticate :user do
    resources :flyers, only: [:new, :edit, :create, :update, :destroy]

    resources :profiles, only: [:new, :show, :index]
    resources :comments, only: [:new, :show, :create, :destroy]
  end
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
  get "/category/index" => "category#index"
  get "/category/:id" => "category#show"
  get "/projects" => "home#projects"
  
  root to: "home#index"
  
end
