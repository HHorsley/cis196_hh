class AdminController < ApplicationController

	def cockpit
	if current_user.email != "hhorsley@wharton.upenn.edu"
      redirect_to root_path
    end

  	@courses = Course.all

  end
end
