class AddUserIdToRecurringEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :recurring_events, :user_id, :integer
  end
end
