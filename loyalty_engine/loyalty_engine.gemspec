$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "loyalty_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "loyalty_engine"
  s.version     = LoyaltyEngine::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of LoyaltyEngine."
  s.description = "TODO: Description of LoyaltyEngine."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.2"
  s.add_dependency "devise"

  s.add_development_dependency "mysql2"
end
