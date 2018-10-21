class CreateReccuringEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :reccuring_events do |t|
      t.date :date
      t.time :time
      t.integer :meal

      t.timestamps
    end
  end
end
