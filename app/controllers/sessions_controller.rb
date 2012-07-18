class SessionsController < ApplicationController

  def create
    
    # attempt to authenticate user based on the user/password params
    user = User.authenticate(params[:name], params[:password])

    if user
      # if so, store the current_user and redirect to homepage
      session[:current_user] = user.id
      redirect_to albums_path, notice: "welcome back #{user.name}"
    else
      # else say they failed and let them try again
      redirect_to new_session_path, notice: 'invalid name/password'
    end
  end
  
  def new
  end
  
  def destroy
    session.clear
    redirect_to root_path
  end
  
end
