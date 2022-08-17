class CreateSpots < ActiveRecord::Migration[7.0]
  def change
    create_table :spots do |t|
      t.integer :spot_number
      t.integer :parking_id
      t.boolean :is_available

      t.timestamps
    end
  end
end
