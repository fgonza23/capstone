
json.id user.id
json.name user.name
json.email user.email
json.password user.password

json.donation_requests do
  json.partial! user.donation_requests, partial: 'api/donation_requests/donation_request', as: :donation_request
end

