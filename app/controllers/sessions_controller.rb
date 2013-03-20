class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
  def destroy
  	# facebook_logout
  	session[:user_id] = nil
  	redirect_to root_url
  end
  # def facebook_logout
  #   split_token = session[:fb_token].split("|")
  #   fb_api_key = split_token[0]
  #   fb_session_key = split_token[1]
  #   redirect_to "http://www.facebook.com/logout.php?api_key=#{fb_api_key}&session_key=#{fb_session_key}&confirm=1&next=#{destroy_user_session_url}";
  # end
end