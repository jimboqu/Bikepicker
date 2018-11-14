class CreateBrakes < ActiveRecord::Migration[5.2]
  def change
    create_table :brakes do |t|
      t.string :manufacturer
      t.string :name
      t.decimal :price, default: 0
      t.integer :weight, precision: 5, scale: 2, default: 0.00

      t.timestamps
    end
  end
end
