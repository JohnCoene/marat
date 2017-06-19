# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/roman/version'

Gem::Specification.new do |spec|
  spec.name        = "jekyll-roman"
  spec.version     = Jekyll::Roman::VERSION
  spec.summary     = "Jekyll plugin that converts numbers into Roman numerals."
  spec.description = "A liquid filter for Jekyll that converts numbers into Roman numerals."
  spec.authors     = ["Paul Robert Lloyd"]
  spec.email       = "me+rubygems@paulrobertlloyd.com"
  spec.files       = Dir.glob("lib/**/*.rb")
  spec.homepage    = "https://github.com/paulrobertlloyd/jekyll-roman"
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", [">= 2.0", "< 4.0"]
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_development_dependency "bundler", "~> 1.6"
end
