class AddWheeltoBikes < ActiveRecord::Migration[5.2]
  def change
  	add_column :bikes, :wheel_id, :integer
  end
end
