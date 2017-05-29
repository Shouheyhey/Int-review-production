class ChangeColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :kanji_name, :string
    add_column :users, :furigana_name, :string
    add_column :users, :birthday, :date
    add_column :users, :sex, :char
    add_column :users, :address, :string
    add_column :users, :university, :string
    add_column :users, :department, :string
    add_column :users, :culture_or_science, :string
    add_column :users, :graduation_year, :integer
    add_column :users, :company, :string
    add_column :Users, :other, :string
  end
end
