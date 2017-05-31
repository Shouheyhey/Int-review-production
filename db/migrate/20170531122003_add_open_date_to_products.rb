class AddOpenDateToProducts < ActiveRecord::Migration
  def change
    add_column :Products, :open_data, :string
  end
end
