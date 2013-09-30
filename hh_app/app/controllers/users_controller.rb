class UsersController < ApplicationController
  def new
  end

  def index
  	@users = User.all
  end

  def create
  	@user = User.new(params[:user])
  		if @user.save
  			redirect_to users_path
  		else 
  			render 'new'
end