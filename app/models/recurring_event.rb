class RecurringEvent < ApplicationRecord

  validates :datetime, presence: true
  
  belongs_to :user
  enum meal: {breakfast: 0, lunch: 1, dinner: 2}
end
