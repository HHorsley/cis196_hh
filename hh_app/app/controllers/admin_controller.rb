class AdminController < ApplicationController

	def cockpit
  	@courses = Course.all

    if !current_user_email = "hunter.horsley@gmail.com"
      redirect_to root_path
    end


    def set_editor_pick
	  course = Course.find(params[:id])
	  course.update_attribute(:editor_pick, true)
	end

	def set_weird
	  course = Course.find(params[:id])
	  course.update_attribute(:weird, course.weird + 1)
	end

  end
end
