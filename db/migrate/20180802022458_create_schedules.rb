class CreateSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :schedules do |t|
      t.integer :game_number
      t.string :scheduled
      t.string :home_team
      t.string :away_team
      t.boolean :double_header
      t.string :venue

      t.timestamps
    end
  end
end
