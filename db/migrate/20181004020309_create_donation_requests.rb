class CreateDonationRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :donation_requests do |t|
      t.integer :recipient_id
      t.date :date
      t.integer :meal
      t.integer :family_size

      t.timestamps
    end
  end
end
