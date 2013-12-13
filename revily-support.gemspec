# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'revily/support/version'

Gem::Specification.new do |spec|
  spec.name          = "revily-support"
  spec.version       = Revily::Support::VERSION
  spec.authors       = ["Dan Ryan"]
  spec.email         = ["scriptfu@gmail.com"]
  spec.description   = %q{Support library for Revily projects}
  spec.summary       = %q{Support library for Revily projects}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 4.0", "< 5.0"

  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
