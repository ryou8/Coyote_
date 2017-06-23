class RoomsController < ApplicationController
  
  $game_count = 0
  
  def new
    user = User.find(session[:user_id])
    user.wait = "true"
    user.save
    #@count = User.find_by_sql(['select count(*) from users where wait = "t"'])
    @count = User.where('wait = "t"').count
    if @count == 4 then
      redirect_to rooms_url
      
    if user = User.find(session[:user_id])
      
    end
  end
    
  def index
    user = User.find(session[:user_id])
    user.wait = "true"
    user.save
  end

end
