class AddBrakeToBikes < ActiveRecord::Migration[5.2]
  def change
    add_reference :bikes, :brake, foreign_key: true
  end
end
