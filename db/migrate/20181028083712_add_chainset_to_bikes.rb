class AddChainsetToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :chainset_id, :integer
  end
end
