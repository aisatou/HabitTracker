class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :time
      t.integer :user_id
      t.integer :habit_id
      t.string :frequency

      t.timestamps
    end
  end
end
