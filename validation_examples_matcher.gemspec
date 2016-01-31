lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'validation_examples_matcher/version'

Gem::Specification.new do |spec|
  spec.name          = 'validation_examples_matcher'
  spec.version       = ValidationExamplesMatcher::VERSION
  spec.authors       = ['Hirokazu Nishioka']
  spec.email         = ['hiro@nisshiee.org']

  spec.summary       = 'Validation matcher with examples for RSpec'
  spec.description   = 'validation_examples_matcher provides rspec matcher testing validations with examples.'
  spec.homepage      = 'https://github.com/nisshiee/validation_examples_matcher'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_runtime_dependency 'rspec-expectations', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '>= 0.11.1', '< 0.12.0'
  spec.add_development_dependency 'activemodel', '~> 4.2.5'
  spec.add_development_dependency 'pry-byebug', '~> 3.3.0'
  spec.add_development_dependency 'rubocop', '>= 0.36.0', '< 0.37.0'
end
