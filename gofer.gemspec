$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "gofer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "gofer"
  s.version     = Gofer::VERSION
  s.authors     = ["(ю:】"]
  s.email       = ["gardentreex@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Gofer."
  s.description = "TODO: Description of Gofer."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
