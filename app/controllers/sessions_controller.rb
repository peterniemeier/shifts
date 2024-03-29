class SessionsController < ApplicationController

  def create
    user = User.find_by_credentials(params[:user][:user_name], params[:user][:password])
    if user
      login(user)
      redirect_to shifts_url
    else
      render :json => ["Sorry, invalid credentials"], status: 401

    end
  end

  def new
  end

  def destroy
    unless logged_in?
      render :json => ["Sorry, no session to destroy"], status: 401
    end
    logout
    redirect_to new_session_url
  end

end
