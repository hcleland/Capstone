class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :stadium_id
      t.integer :schedule_id

      t.timestamps
    end
  end
end
