class Donation < ApplicationRecord

  belongs_to :user
  belongs_to :donation_request
  
end
