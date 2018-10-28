class CreateChainsets < ActiveRecord::Migration[5.2]
  def change
    create_table :chainsets do |t|
      t.string :name
      t.string :manufacturer
      t.integer :weight, default: 0
      t.decimal :price, precision: 5, scale: 2, default: 0.00

      t.timestamps
    end
  end
end
