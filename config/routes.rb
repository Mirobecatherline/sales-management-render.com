Rails.application.routes.draw do
  resources :sales_pipelines
  resources :categories
  # resources :products
  get '/products/:category', to: 'products#index'
  get '/productsgateA/:category', to: 'products#productsgateA'
  get '/productsgateB/:category', to: 'products#productsgateB'
  get '/productsgateC/:category', to: 'products#productsgateC'
  get '/productspipeline/:category', to: 'products#productspipeline'
  get '/allproductsgateA', to: 'products#allproductsgateA'
  get '/allproductsgateB', to: 'products#allproductsgateB'
  get '/allproductsgateC', to: 'products#allproductsgateC'
  get '/allproductspipeline', to: 'products#allproductspipeline'
  post '/productscreate', to: 'products#createproduct'
  resources :employees
  resources :sales_as
  resources :sales_bs
  resources :sales_cs
  resources :sales_as, only: [:index] do
    collection do
      get 'total_sales'
    end
  end
  resources :sales_bs, only: [:index] do
    collection do
      get 'total_sales'
    end
  end
  resources :sales_cs, only: [:index] do
    collection do
      get 'total_sales'
    end
  end
   resources :sales_pipelines, only: [:index] do
    collection do
      get 'total_sales'
    end
  end
  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  get "/user_images", to: "images#show"

  get "/users", to: "users#index"
  get "/sum", to: "sales#sum"
  get "/suma", to: "sales_as#suma"
  get "/sumb", to: "sales_bs#sumb"
  get "/sumc", to: "sales_cs#sumc"
  get "/sumpipeline", to: "sales_pipelines#sumpipeline"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  resources :sales
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
