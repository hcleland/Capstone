class CreateStadia < ActiveRecord::Migration[5.2]
  def change
    create_table :stadia do |t|
      t.string :name
      t.string :market
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :stadium_type

      t.timestamps
    end
  end
end
