require 'omniauth-google-oauth2'

Gofer::REQUEST_PATH = "/gofer/sessions/new"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"],{
    name:           :google,
    scope:          "email",
    request_path:   Gofer::REQUEST_PATH,
    callback_path:  "/gofer/sessions/callback",
    redirect_uri:   ENV["GOOGLEAUTH_REDIRECT_URL"],
    hd:             ENV["GOOGLEAUTH_HD"],
  }
end
