Rails.application.routes.draw do
  resources :employees
  resources :sales_cs
  resources :sales_bs
  resources :sales_as
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/user_images", to: "images#show"

  get "/users", to: "users#index"
  get "/sum", to: "sales#sum"
  get "/suma", to: "sales_as#suma"
  get "/sumb", to: "sales_bs#sumb"
  get "/sumc", to: "sales_cs#sumc"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :sales
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
