class CreateRecurringEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :recurring_events do |t|
      t.datetime :datetime
      t.integer :meal

      t.timestamps
    end
  end
end
