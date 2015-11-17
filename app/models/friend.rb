class Friend < ActiveRecord::Base
  belongs_to :friends_with, class_name: "User"
  belongs_to :user_id, class_name: "User"
end
