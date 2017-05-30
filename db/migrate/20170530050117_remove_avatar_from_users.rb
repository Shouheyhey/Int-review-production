class RemoveAvatarFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :avatar_file_name ,:varchar
    remove_column :users, :avatar_content_type ,:varchar
    remove_column :users, :avatar_file_size ,:varchar
    remove_column :users, :avatar_updated_at ,:varchar
  end
end
