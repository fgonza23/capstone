class AddUserIdToDonationRequestsAndDonations < ActiveRecord::Migration[5.2]
  def change

    add_column :donation_requests, :user_id, :integer
    add_column :donations, :user_id, :integer
  end
end
