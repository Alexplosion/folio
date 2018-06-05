class DropGuides < ActiveRecord::Migration[5.1]
  def change
    drop_table :guides
  end
end
