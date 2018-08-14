class AddTeamName < ActiveRecord::Migration[5.2]
  def change
    add_column :stadia, :team_name, :string
  end
end
