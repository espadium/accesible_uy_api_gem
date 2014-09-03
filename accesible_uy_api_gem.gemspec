# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'accesible_uy_api_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'accesible_uy_api_gem'
  spec.version       = AccesibleUyApiGem::VERSION
  spec.authors       = ['Oscar Siniscalchi']
  spec.email         = ['oscar.siniscalchi@neonroots.com']
  spec.summary       = %q{A ruby wrapper for api.accesible.uy}
  spec.description   = %q{A wrapper of the RESTFUL api at api.accesible.uy}
  spec.homepage      = 'api.accesible.uy/ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split('\x0')
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'json'
  
end
