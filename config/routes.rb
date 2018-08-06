Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "/stadiums" => "stadiums#index"
    get "/stadiums/:id" => "stadiums#show"

    get "/schedules" => "schedules#index"
  end
end
