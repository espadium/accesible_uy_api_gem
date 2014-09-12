Gem::Specification.new do |s|
  s.name        = 'accesible_uy_api_gem'
  s.version     = '0.0.0'
  s.date        = '2014-06-29'
  s.summary     = 'Wrapper for AccesibleUY api'
  s.description = 'Create an app that uses AccesibleUY api!'
  s.authors     = %w{
    Natalia Olij <natyolij@gmail.com>,
    Gabriel Osorio <gabriel.osorio.montelius@gmail.com>,
    Iuval Goldansky <iuvalgoldansky@gmail.com>,
    Clara Osorio <osoriomontelius@gmail.com>,
    Oscar Siniscalchi <oscarsiniscalchi@gmail.com>
  }
  s.email       = 'accesibleuy@gmail.com'
  s.files       = ["lib/accesible_uy_api_gem.rb"]
  s.homepage    = 'http://rubygems.org/gems/accesible_uy_api_gem'
  s.license     = 'MIT'

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'json'
end
