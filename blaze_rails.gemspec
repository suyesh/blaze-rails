lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "blaze_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "blaze_rails"
  s.version     = BlazeRails::VERSION
  s.authors     = ["Suyesh Bhandari"]
  s.email       = ["suyeshb@gmail.com"]
  s.homepage    = "https://github.com/suyesh/blaze-rails"
  s.summary     = "SASS version of Blaze CSS"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_runtime_dependency 'sass', '>=3.4.22'
end
