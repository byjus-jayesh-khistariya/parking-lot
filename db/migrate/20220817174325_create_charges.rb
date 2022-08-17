class CreateCharges < ActiveRecord::Migration[7.0]
  def change
    create_table :charges do |t|
      t.string :veahicle_type
      t.integer :amount_per_hour

      t.timestamps
    end
  end
end
