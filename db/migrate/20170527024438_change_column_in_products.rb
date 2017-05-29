class ChangeColumnInProducts < ActiveRecord::Migration
  def change
    rename_column :products, :company_name, :title
    rename_column :products, :company_info, :url
  end
end
