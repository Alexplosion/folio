class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :subtitle
      t.text :body
      t.text :main_img
      t.text :thumb_img

      t.timestamps
    end
  end
end
