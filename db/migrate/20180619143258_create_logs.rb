class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :schedule_id
      t.boolean :schedule_finished?
      t.datetime :date_completed

      t.timestamps
    end
  end
end
