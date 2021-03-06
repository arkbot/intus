# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intus/version'

Gem::Specification.new do |spec|
  spec.name          = 'intus'
  spec.version       = Intus::VERSION
  spec.authors       = ['Adam Eberlin']
  spec.email         = ['ae@adameberlin.com']
  spec.summary       = 'Manipulate an object within exec/eval, but return self.'
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/arkbot/intus'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'cucumber'
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-perscribo'
  spec.add_development_dependency 'guard-cucumber'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'guard-rubocop'
  spec.add_development_dependency 'guard-shell'
  spec.add_development_dependency 'perscribo'
  spec.add_development_dependency 'perscribo-cucumber'
  spec.add_development_dependency 'perscribo-rspec'
  spec.add_development_dependency 'perscribo-rubocop'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'terminal-notifier-guard'
end
