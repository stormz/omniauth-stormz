# -*- encoding: utf-8 -*-
require File.expand_path('../lib/omniauth-stormz/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors = ["François de Metz"]
  gem.email = ["francois@stormz.me"]
  gem.description = %q{Official OmniAuth strategy for Stormz.}
  gem.summary = %q{Official OmniAuth strategy for Stormz.}
  gem.homepage = "https://github.com/stormz/omniauth-stormz"

  gem.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name = "omniauth-stormz"
  gem.require_paths = ["lib"]
  gem.version = OmniAuth::Stormz::VERSION

  gem.add_dependency 'omniauth', '~> 1.0'
  gem.add_dependency 'omniauth-oauth2', '~> 1.1'
end
