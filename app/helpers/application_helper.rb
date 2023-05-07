module ApplicationHelper
    def is_logined?
      return session[:user_id] != nil
    end
end
