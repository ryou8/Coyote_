class SessionController < ApplicationController
  def new
  end
  
  def create
    @email = params[:email]
    @password = params[:password]
    @user = User.authenticate(@email, @password)
    if @user
      session[:user_id] = @user.id
      flash[:notice] = "ログインに成功しました"
      redirect_to users_url
    else
      @error = "ログインに失敗しました"
      render :action => :new
    end
  end
  
  def destroy
    reset_session
    redirect_to root_url
  end
  
end
