Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/stadiums" => "stadiums#index"
    get "/stadiums/:id" => "stadiums#show"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/ratings" => "ratings#create"
  end
end
