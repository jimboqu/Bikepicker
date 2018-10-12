class AddFrameToBikes < ActiveRecord::Migration[5.2]
  def change
    add_column :bikes, :frame_id, :integer
  end
end
