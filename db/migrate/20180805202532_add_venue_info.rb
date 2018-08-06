class AddVenueInfo < ActiveRecord::Migration[5.2]
  def change
    add_column :schedules, :venue_name, :string
    add_column :schedules, :venue_address, :string
    add_column :schedules, :venue_city, :string
    add_column :schedules, :venue_state, :string
    add_column :schedules, :venue_zip, :string
  end
end
