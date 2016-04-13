class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_location
      t.datetime :event_date
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
