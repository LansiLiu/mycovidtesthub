module SessionsHelper
	def log_in(user)
		session[:username] = user.username
		# session[:session_token] = user.session_token
	end

  def forget(user)
    user.forget
    cookies.delete(:username)
    cookies.delete(:remember_token)
  end

  def current_user 
    #if session[:username]
      #@current_user ||= Admin.find_by(username: session[:username])
    #end
     if session[:username]
       @current_user ||= Admin.find_by(username: session[:username])
     elsif cookies.encrypted[:username]
       user = Admin.find_by(username: cookies.encrypted[:username])
       if user && user.authenticated?(cookies[:remember_token])
         log_in user
         @current_user = user
       end
     end
  end

  def logged_in?
    !current_user.nil?
  end

  def log_out
    forget(current_user)
    session.delete(:username)
    @current_user = nil
  end

	def remember(admin)
    admin.remember
    cookies.permanent.encrypted[:username] = admin.username
    cookies.permanent[:remember_token] = admin.remember_token
  end

end
