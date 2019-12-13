module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user (if any).
 def current_user
   @current_user ||= User.find_by(id:session[:user_id])
 end

 # Returns true if the user is logged in, false otherwise.
 def logged_in?
   unless User.find_by(id:session[:user_id])
     redirect_to login_url, notice:"Please log in as a user before viewing this page."
   end
 end

 def is_admin?
    if @current_user.isadmin == true
      true
    elsif @current_user.isadmin == false
      false
    end
  end

 # Logs out the current user.
  def log_out
    session[:cart] = []
    session.delete(:user_id)
    @current_user = nil
  end

  def clear_cart
    session[:cart] = []
  end

  def is_cart_empty?

    numitems = session[:cart].count()
    numitems.to_i

    if numitems < 1
      false
    else
      true
    end

  end
end
