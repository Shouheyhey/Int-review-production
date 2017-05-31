class RemoveSpanFromReviews < ActiveRecord::Migration
  def change
    remove_column :reviews,:span,:int
  end
end
