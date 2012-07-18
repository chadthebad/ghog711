module ApplicationHelper

  def current_user
    if session[:current_user]
      User.find(session[:current_user])
    end
  end

end
