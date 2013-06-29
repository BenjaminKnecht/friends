class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.string :name
      t.string :area
      t.date :last_contact
      t.date :last_meeting
      t.string :location_0
      t.string :location_1
      t.string :location_2
      t.date :next_meeting
      t.integer :contact_interval
      t.integer :meeting_interval

      t.timestamps
    end
  end
end
