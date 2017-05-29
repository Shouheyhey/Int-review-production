class RemoveNicknameFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews, :nickname 
  end
end
