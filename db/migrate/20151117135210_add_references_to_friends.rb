class AddReferencesToFriends < ActiveRecord::Migration
  def change
    add_foreign_key :friends, :users, column: :user_id
    add_foreign_key :friends, :users, column: :friend_id 
  end
end
