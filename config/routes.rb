Rails.application.routes.draw do
  namespace :api do
    get "/all_products_path" => "products#all_products_action"
    get "/view_product_path" => "products#view_product_action"
  end
end
