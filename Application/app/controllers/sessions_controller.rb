class SessionsController < ApplicationController
  def new
  end  
  
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to calculator_gradeCalculator_path
    else
      flash.now.alert = "Invalid email or password"
      render new_session_path
    end
  end  
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
  
end
