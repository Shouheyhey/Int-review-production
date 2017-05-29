class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :detail
      t.text :image_url
      t.string :url
      t.timestamps null: false
    end
  end
end
