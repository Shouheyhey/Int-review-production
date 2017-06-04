class AddTitleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :title , :string
    add_column :users, :occupation, :string
    add_column :users, :length, :string
    add_column :users, :often, :string
    add_column :users, :hourly_wage, :string
    add_column :users, :rate_flexibility, :integer
    add_column :users, :rate_wage, :integer
    add_column :users, :rate_future, :integer
    add_column :users, :rate_growth, :integer
    add_column :users, :rate_social, :integer
    add_column :users, :rate_value, :integer
    add_column :Users, :rate_reccommendation, :integer
    add_column :users, :review_training, :text
    add_column :users, :review_merit, :text
  end
end
