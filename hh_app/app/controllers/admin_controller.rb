class AdminController < ApplicationController

	def index
  	@courses = Course.all

    if !current_user_email = "hunter.horsley@gmail.com"
      redirect_to root_path
    end

  end
end
