module Gofer
  module Brain
    def require_login
      unless logged_in?
        redirect_to REQUEST_PATH
        return false
      end
    end

    def logged_in?
      session[:email].present?
    end
  end
end
