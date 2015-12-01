class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_profile!
  #before_action :user_type

  #def user_type
   # if current_profile.user.type == "Player"
   # end
  #end

end
