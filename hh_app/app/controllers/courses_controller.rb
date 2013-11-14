class CoursesController < ApplicationController
  def new
  	@course = Course.new
    if !user_signed_in? 
      redirect_to new_user_session_path
    end
  end

  def create
  	@course = Course.new(params[:course])
  	if @course.save 
      Notifications.new_course(@course).deliver
  		redirect_to courses_path
  	else
  		render 'new'
  	end
  end

  def index
    @courses = Course.rank
    #@courses = Course.find_with_reputation(:votes, :all, order: "votes desc") 
  end

  def show
    @course = Course.find(params[:id])
    #@votes = Course.find_with_reputation(:votes, :all, order: "votes desc")

  end

  def edit
    @course = Course.find(params[:id])
    if @user.id 
    end
  end

  def update
    @course = Course.find(params[:id])
    if @course.update_attributes(params[:course])
      redirect_to courses_path(@course.id)
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])
    @course.destroy
    redirect_to courses_path
  end
end


