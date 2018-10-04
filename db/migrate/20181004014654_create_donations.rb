class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :donation_request_id
      t.integer :donor_id
      t.string :messages

      t.timestamps
    end
  end
end
