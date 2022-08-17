class CreateParkings < ActiveRecord::Migration[7.0]
  def change
    create_table :parkings do |t|
      t.string :phone_number
      t.string :veahicle_number
      t.string :veahicle_type

      t.timestamps
    end
  end
end
