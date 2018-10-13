class AddWeightToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :weight, :integer
  end
end
