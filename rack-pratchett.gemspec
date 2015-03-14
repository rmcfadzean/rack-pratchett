# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/pratchett/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-pratchett"
  spec.version       = Rack::Pratchett::VERSION
  spec.authors       = ["Rob"]
  spec.email         = ["root@sphericalcube.net"]

  spec.summary       = %q{Terry Pratchett rack middleware. GNU Terry Pratchett.}
  spec.description   = %q{Includes {'X-Clacks-Overhead': 'GNU Terry Pratchett'} header inside any rack application. http://redd.it/2yt9j6}
  spec.homepage      = "https://github.com/wonderbread/rack-pratchett"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # if spec.respond_to?(:metadata)
  #   spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  # end

  spec.add_development_dependency 'bundler', "~> 1.8"
  spec.add_development_dependency 'rake', "~> 10.0"
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rack'
end
