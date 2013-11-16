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
    @courses = Course.all
  end

  def show
    @course = Course.find(params[:id])

  end

  def edit
    @course = Course.find(params[:id])
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

  def vote_up
    begin
      current_user.vote_for(@course = Course.find(params[:id]))
      redirect_to course_path(@course.id) 
    rescue ActiveRecord::RecordInvalid
      redirect_to course_path(@course.id)  
    end
  end
  
  def vote_down
    begin
      current_user.vote_against(@course = Course.find(params[:id]))
      #this is what will happen if the vote succeeds(right now a user can only vote once per course)
      #either way, right now it stays on the courses index, but it could do whatever you want
      redirect_to course_path(@course.id) 
    rescue ActiveRecord::RecordInvalid
     #this is what will happen if the vote fails(right now a user can only vote once per course)
     #either way, right now it stays on the courses index, but it could do whatever you want
      redirect_to course_path(@course.id) 
    end
  end

end


