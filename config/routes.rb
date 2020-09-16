Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"
    get "/products" => "products#show"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    delete "/products/:id" => "products#destroy"
    patch "/products/:id" => "products#update"

    post "/images" => "images#create"
    get "/images" => "images#index"
    get "/images/:id" => "images#show"
    delete "/images/:id" => "images#destroy"
    patch "/images/:id" => "images#update"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    get "/orders/" => "orders#index"
    post "/orders" => "orders#create"
    get "/orders/:id" => "orders#show"
  end
end
