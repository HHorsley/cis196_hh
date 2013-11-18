class AdminController < ApplicationController

	def cockpit
	if current_user.email != "hunter.horsley@gmail.com"
      redirect_to root_path
    end

  	@courses = Course.all

  end
end
