class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :flight
      t.date :departure_date
      t.text :origin
      t.text :destination
      t.integer :plane_id
      t.integer :seats

      t.timestamps
    end
  end
end
