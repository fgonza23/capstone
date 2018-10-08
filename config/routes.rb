Rails.application.routes.draw do
  namespace :api do

    post "/users" => 'users#create'

    get "/donation" => 'donation#index'
    post "/donation" => 'donation#create'
    delete "/donation/:id" => 'donation#destroy'

    get "/donation_requests" => 'donation_requests#index'
    post "/donation_requests" => 'donation_requests#create'
    get "/donation_requests/:id" => 'donation_requests#show'
    patch "/donation_requests/:id" => 'donation_requests#update'
    delete "/donation_requests/:id" => 'donation_requests#destroy'

  end

end
