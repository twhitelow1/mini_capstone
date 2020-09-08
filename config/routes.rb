Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#index"
    get "/products" => "products#show"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    delete "/products/:id" => "products#destroy"
    patch "/products/:id" => "products#update"
  end
end
