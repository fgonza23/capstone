class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :email, presence: true, uniqueness: true

  has_many :donations
  has_many :donation_requests


end
