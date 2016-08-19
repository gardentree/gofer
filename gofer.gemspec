$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gofer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gofer"
  s.version     = Gofer::VERSION
  s.authors     = ["(ю:】"]
  s.email       = ["gardentreex@gmail.com"]
  s.homepage    = ""
  s.summary     = "This gem provides Google OAuth for rails with omniauth."
  s.description = "This is an implement of omniauth-google-oauth2."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
  s.add_dependency "omniauth-google-oauth2"

  s.add_development_dependency "sqlite3"
end
