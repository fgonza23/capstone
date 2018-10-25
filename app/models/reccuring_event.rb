class ReccuringEvent < ApplicationRecord

  validates :date, presence: true,
  
  belongs_to :user
  enum meal: {breakfast: 0, lunch: 1, dinner: 2}

end
