class HomeController < ApplicationController
  def land
    @user_to_be_invited=User.new
    @user=current_user
    @friends_list=getCurrentUserFriendsList
  end
end
