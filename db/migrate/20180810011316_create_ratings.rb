class CreateRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :ratings do |t|
      t.integer :stadium
      t.integer :atmosphere
      t.integer :concessions
      t.integer :extras
      t.integer :fans
      t.text :notes

      t.timestamps
    end
  end
end
