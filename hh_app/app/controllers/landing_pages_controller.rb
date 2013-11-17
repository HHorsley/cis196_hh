class LandingPagesController < ApplicationController

  layout "home", :except => [:about]

  def home
  	#if !user_signed_in? 
  	#	redirect_to new_user_session_path
  	#end
  	@courses = Course.all
  	@courses_editor = Course.home_editor_picks
  	@courses_top = Course.home_top
  	@courses_weird = Course.home_weird

  end


  def about
  end

end
