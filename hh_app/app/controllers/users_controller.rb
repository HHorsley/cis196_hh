class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def index
    if current_user.email != "hhorsley@wharton.upenn.edu"
      redirect_to root_path
    end

  	@users = User.all
  end

  def create
  	@user = User.new(params[:user])
  		if @user.save
        Notifications.new_user(@user).deliver
  			redirect_to root_path
  		else 
  			render 'new'
      end
  end

  def email_new_user
    @user = User.new(params[:user])
    if @user.save
        Notifications.new_user(@user).deliver
    end
  end

  def show 
    @user = User.find(params[:id])
  end

  def edit
    if current_user.email != "hhorsley@wharton.upenn.edu"
      redirect_to root_path
    end

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
    if current_user.email != "hhorsley@wharton.upenn.edu"
      redirect_to root_path
    end

    @user = User.find(params[:id]).destroy
    redirect_to root_path
  end

  def sign_out
    redirect_to root_path
  end


end
