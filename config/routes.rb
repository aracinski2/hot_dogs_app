Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/hot_dogs" => "hot_dogs#index"
    get "hot_dogs/:id" => "hot_dogs#show"
    post "/hot_dogs" => "hot_dogs#create"
    patch "/hot_dogs/:id" => "hot_dogs#update"
    delete "/hot_dogs/:id" => "hot_dogs#delete"
  end

end
