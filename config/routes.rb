Rails.application.routes.draw do
  namespace :api do

    get 


    post "/sessions" => "sessions#create"

    get "/users" => 'users#index'
    post "/users" => 'users#create'


    get "/donations" => 'donations#index'
    post "/donations" => 'donations#create'
    delete "/donations/:id" => 'donations#destroy'

    get "/donation_requests" => 'donation_requests#index'
    post "/donation_requests" => 'donation_requests#create'
    get "/donation_requests/:id" => 'donation_requests#show'
    patch "/donation_requests/:id" => 'donation_requests#update'
    delete "/donation_requests/:id" => 'donation_requests#destroy'

  end
end
