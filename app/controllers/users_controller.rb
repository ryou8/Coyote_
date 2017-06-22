class UsersController < ApplicationController

  def new
    @user =  User.new
  end

  def create
    @user = User.new
    @user.name = params[:name]
    @user.userid = params[:userid]
    @user.password = params[:password]
    if @user.save
    redirect_to users_path
  else
    render :new
  end
  end


end
