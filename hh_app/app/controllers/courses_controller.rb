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
  end


end
