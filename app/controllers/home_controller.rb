class HomeController < ApplicationController
  def land
    @user_to_be_invited=User.new
  end
end
