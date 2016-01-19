$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "es6_module_loader/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "es6_module_loader"
  s.version     = Es6ModuleLoader::VERSION
  s.authors     = ["Tom Scott"]
  s.email       = ["tscott@weblinc.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Es6ModuleLoader."
  s.description = "TODO: Description of Es6ModuleLoader."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4"
  s.add_dependency "sprockets-es6"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "rubocop"
  s.add_development_dependency "yard"
end
