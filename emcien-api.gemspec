# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emcien/api/version'

Gem::Specification.new do |spec|
  spec.name          = "emcien-api"
  spec.version       = Emcien::Api::VERSION
  spec.authors       = ["Raj Gulati"]
  spec.email         = ["rargulati@gmail.com"]
  spec.description   = 'A light wrapper over the Emcien API'
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  
  spec.add_dependency 'faraday'
  spec.add_dependency 'excon'
  spec.add_dependency 'oj'
  spec.add_dependency 'rack'
end
