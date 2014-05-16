class AddScoresToUser < ActiveRecord::Migration
  def change
    add_column :users, :cat1, :integer, :default => 0
    add_column :users, :cat2, :integer, :default => 0
    add_column :users, :cat3, :integer, :default => 0
  end
end
