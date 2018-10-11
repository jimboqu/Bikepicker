class CreateFrames < ActiveRecord::Migration[5.2]
  def change
    create_table :frames do |t|
      t.string :name
      t.string :manufacturer
      t.decimal :price, :precision => 8, :scale => 2
      t.integer :weight

      t.timestamps
    end
  end
end
