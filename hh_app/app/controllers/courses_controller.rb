class CoursesController < ApplicationController
  def new
  	@course = Course.new
  end

  def create
  	@course = Course.new(params[:course])
  	if @course.save 
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

end
