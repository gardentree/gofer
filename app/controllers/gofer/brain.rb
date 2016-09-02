module Gofer
  module Brain
    def require_login
      unless logged_in?
        session[:path_before_signin] = request.fullpath

        redirect_to REQUEST_PATH
        return false
      end
    end

    def logged_in?
      session[:email].present?
    end
  end
end
