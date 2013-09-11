helpers do
  def logged_in?
    session[:user_id] ? true : false
    #need some more explanation in that code
  end

  
  def current_user
    # TODO: return the current user if there is a user signed in.
    logged_in? ? User.find(session[:user_id]) : nil
  end
end

