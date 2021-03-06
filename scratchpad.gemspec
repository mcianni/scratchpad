$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scratchpad/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scratchpad"
  s.version     = Scratchpad::VERSION
  s.authors     = ["mcianni"]
  s.email       = ["mcianni@gmail.com"]
  s.homepage    = "https://github.com/mcianni/scratchpad"
  s.summary     = "A scratchpad for noting data."
  s.description = "Add a panel to your Rails app where you can display debug content."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0"

  #s.add_development_dependency "sqlite3"
end
