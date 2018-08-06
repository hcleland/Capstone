class RemoveGeneralVenueColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :schedules, :venue, :string
  end
end
