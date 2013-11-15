class LandingPagesController < ApplicationController

  layout "home", :except => [:about]

  def home
  	#if !user_signed_in? 
  	#	redirect_to new_user_session_path
  	#end
  	@courses = Course.all

  end


  def about
  end

end
