class FriendsController < ApplicationController
  def add
    @user_to_be_searched=User.new
  end

  def addToFriendsList
    #debugger
    search_parameter=params[:user][:username]
    friend_user_obj=User.find_by username: search_parameter
    friend_obj=current_user.friends.new
    friend_obj.friends_with=friend_user_obj.id
    friend_obj.save
    redirect_to friends_list_path
  end

  def delete
  end

  def search
    #debugger
    @user_to_be_searched=User.new
    search_parameter=params[:user][:login]
    @user_to_be_searched.login=search_parameter
    #Find the list of users who have the passed in username or email
    #Check username
    @user_obj=User.find_by username: search_parameter
    @user_obj=User.find_by email: search_parameter if @user_obj.nil?
  end

  def list
    @friends_list=getCurrentUserFriendsList

  end

  def inviteFriend
  end
end
