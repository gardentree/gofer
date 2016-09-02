require_dependency "gofer/application_controller"

module Gofer
  class SessionsController < ApplicationController
    def create
      session[:email] = request.env["omniauth.auth"].to_hash['info']['email']
      redirect_to after_logged_in_path
    end

    def failure
    end

    private
      def after_logged_in_path
        return session[:path_before_signin] if session[:path_before_signin].present?

        main_app.respond_to?(:root_path) ? main_app.root_path : "/"
      end
  end
end
