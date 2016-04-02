class AddParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string  :name
      t.date    :birthdate
      t.string  :email
      t.string  :id_number
      t.integer :event_id
      t.string  :major
      t.string  :concentration

      t.timestamps null: false
    end
  end
end
