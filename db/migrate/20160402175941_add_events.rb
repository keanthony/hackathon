class AddEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string  :name
      t.text    :description
      t.date    :day
      t.time    :start_time
      t.time    :end_time
      t.string  :location
      t.integer :guest_id

      t.timestamps null: false
    end
  end
end
