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
  spec.add_development_dependency 'cucumber', '~> 1.3.17'
  spec.add_development_dependency 'guard', '~> 2.6.1'
  # spec.add_development_dependency 'guard-perscribo', '~> 0.0.1'
  spec.add_development_dependency 'guard-cucumber', '~> 1.4.1'
  spec.add_development_dependency 'guard-rspec', '~> 4.3.1'
  spec.add_development_dependency 'guard-rubocop', '~> 1.1.0'
  spec.add_development_dependency 'guard-shell', '~> 0.6.1'
  # spec.add_development_dependency 'perscribo', '~> 0.0.1'
  # spec.add_development_dependency 'perscribo-cucumber', '~> 0.0.1'
  # spec.add_development_dependency 'perscribo-rspec', '~> 0.0.1'
  # spec.add_development_dependency 'perscribo-rubocop', '~> 0.0.1'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'rubocop', '~> 0.26.1'
  spec.add_development_dependency 'terminal-notifier-guard', '~> 1.5.3'
end
