# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_sierra/version'

Gem::Specification.new do |spec|
  spec.name          = "active_sierra"
  spec.version       = ActiveSierra::VERSION
  spec.authors       = ["James Van Mil"]
  spec.authors       = ["James Van Mil", "Sean Crowe"]
  spec.email         = ['vanmiljf@ucmail.uc.edu', 'crowesn@ucmail.uc.edu']
  spec.summary       = %q{ActiveSierra gem}
  spec.description   = %q{Connections and configurations for III Sierra database}
  spec.homepage      = "https://github.com/uclibs/ActiveSierrra"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
