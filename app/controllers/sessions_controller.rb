class SessionsController < ApplicationController
  def new
  end

	def create
    user = Admin.find_by(username: params[:session][:username])
    if !user.nil? && Admin.make_digest(params[:session][:password])== user.password_digest
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to root_url, notice: "Successfully logged in."
    else
      redirect_to '/login',alert: "Invalid username/password combination."
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end


end
