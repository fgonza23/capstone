Rails.application.routes.draw do
  namespace :api do

    get "/recurring_events/new" => 'recurring_events#new'
    post "/recurring_events" => 'recurring_events#create'

           

    post "/sessions" => "sessions#create"


    get "/signup" => "users#new"
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

    get "/open_box" => 'donation_requests#open_box'
    get "/close_box" => 'donation_requests#close_box'

  end
end
