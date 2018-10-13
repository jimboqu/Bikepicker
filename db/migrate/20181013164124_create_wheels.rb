class CreateWheels < ActiveRecord::Migration[5.2]
  def change
    create_table :wheels do |t|
      t.string :name
      t.string :manufacturer
      t.string :string
      t.string :price
      t.string :decimal
      t.integer :weight

      t.timestamps
    end
  end
end
