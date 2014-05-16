class AddRealtionsToScores < ActiveRecord::Migration
  def change
    add_column :scores, :user_id, :integer , :default => 0
    add_column :scores, :cat_id, :integer, :default => 0
  end
end
