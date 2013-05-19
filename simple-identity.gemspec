# -*- ruby -*-
# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple-identity/version'

Gem::Specification.new do |spec|
  spec.name          = "simple-identity"
  spec.version       = SimpleIdentity::VERSION
  spec.authors       = ["Keita Yamaguchi"]
  spec.email         = ["keita.yamaguchi@gmail.com"]
  spec.description   = "simple-identity provides simple identity methods of #eql?, #==, and #hash"
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/keita/simple-identity"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "bacon"
end
