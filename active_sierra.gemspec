$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "active_sierra/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "active_sierra"
  s.version     = ActiveSierra::VERSION
  s.authors     = ["James Van Mil, Sean Crowe"]
  s.email       = ["vanmilfj@ucmail.uc.edu, crowesn@ucmail.uc.edu"]
  s.homepage    = "https://github.com/uclibs/active_sierra/"
  s.summary     = "ActiveSierra gem"
  s.description = "Connections and configuration for III Sierra database"
  s.licenses = ["MIT"]
  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "pg"
  #s.add_dependency "therubyracer"

  s.add_development_dependency "sqlite3"
end
