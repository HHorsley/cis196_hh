class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
  	@users = User.all
  end

  def create
  	@user = User.new(params[:user])
  		if @user.save
        Notifications.new_user(@user).deliver
  			redirect_to users_path
  		else 
  			render 'new'
      end
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to users_path(@user.id)
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
    redirect_to root_path
  end

  def sign_out
    redirect_to root
  end


end
