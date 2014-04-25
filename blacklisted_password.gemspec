# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blacklisted_password/version'

Gem::Specification.new do |spec|
  spec.name          = "blacklisted_password"
  spec.version       = BlacklistedPassword::VERSION
  spec.authors       = ["Tanmay Bagchi"]
  spec.email         = ["tbagchi85@gmail.com"]
  spec.description   = "This is a very simple gem to validate black listed password"
  spec.summary       = "This is a very simple gem to validate black listed password"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "ruby", "~> 1.9"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
