class AddStartDateAndEndDateToRecurringEvents < ActiveRecord::Migration[5.2]
  def change

    rename_column :recurring_events, :datetime, :start_time
    add_column :recurring_events, :frequency, :string



  end
end
