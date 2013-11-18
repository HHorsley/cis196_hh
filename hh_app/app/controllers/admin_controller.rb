class AdminController < ApplicationController

	def cockpit
  	@courses = Course.all

    if !current_user_email = "hunter.horsley@gmail.com"
      redirect_to root_path
    end

  end
end
