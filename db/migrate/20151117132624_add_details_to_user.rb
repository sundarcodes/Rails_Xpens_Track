class AddDetailsToUser < ActiveRecord::Migration
  def change
    add_column :friends, :user_id, :integer, :references => "users"
    add_column :friends, :friends_with, :integer, :references => "users"
  end
end
