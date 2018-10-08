class DonationRequest < ApplicationRecord

  validates :family_size, presence: true
  validates :date, presence: true

  belongs_to :user
end
