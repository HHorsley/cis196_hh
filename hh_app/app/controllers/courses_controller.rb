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
  		redirect_to courses_path
  	else
  		render 'new'
  	end
  end


  def index
    @courses = Course.by_dept
    @courses_newest = Course.by_newest
    @courses_top = Course.top
    @courses_editor_picks = Course.editor_picks
    @courses_weird = Course.weird
    @courses_dept = Course.by_dept
  end

  def index_scoped
    if params[:scope_param] == "weird"
      @courses = Course.weird
    end
    if params[:scope_param] == "top"
      @courses = Course.top
    end
    if params[:scope_param] == "editor_picks"
      @courses = Course.editor_picks
    end
    if params[:scope_param] == "by_dept"
      @courses = Course.by_dept
    end
    if params[:scope_param] == "by_newest"
      @courses = Course.by_newest
    end

    render 'index'
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

  def who_voted  #for the view; displays who likes the post
  @course = Course.find(params[:id])
  @users = @course.voters_who_voted
  render 'show_users_who_voted'
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

  def set_editor_pick
    course = Course.find(params[:id])
    course.update_attribute(:editor_pick, true)
    redirect_to admin_cockpit_path
    rescue ActiveRecord::RecordInvalid
      redirect_to admin_cockpit_path 
  end

  def set_weird
    course = Course.find(params[:id])
    course.update_attribute(:weird, course.weird + 1)
    redirect_to admin_cockpit_path 
    rescue ActiveRecord::RecordInvalid
    redirect_to admin_cockpit_path 
  end

  def original_url
    base_url + original_fullpath
  end

end


