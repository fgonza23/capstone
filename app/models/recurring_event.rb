class RecurringEvent < ApplicationRecord

  validates :datetime, presence: true
  
  belongs_to :user
  has_many :donation_requests, dependent: :destroy

  enum meal: {breakfast: 0, lunch: 1, dinner: 2}

  TIME_12H_FORMAT = /\A(1[0-2]|0?[1-9]):[0-5][0-9]\s?(am|pm)\z/i

  validates :datetime, presence: true
    # format: { with: TIME_12H_FORMAT, message: 'invalid time - use format 10:00 am' }
end
