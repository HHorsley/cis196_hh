class LandingPagesController < ApplicationController

  layout "home"

  def home
  	#if !user_signed_in? 
  	#	redirect_to new_user_session_path
  	#end
  end


  def about
  end

end
