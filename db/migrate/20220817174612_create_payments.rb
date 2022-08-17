class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.integer :parking_id
      t.integer :amount

      t.timestamps
    end
  end
end
