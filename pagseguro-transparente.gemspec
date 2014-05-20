# coding: utf-8
require "./lib/pagseguro/version"

Gem::Specification.new do |spec|
  spec.required_ruby_version = ">= 1.9.3"
  spec.name                  = "pagseguro-transparente"
  spec.version               = PagSeguro::VERSION
  spec.authors               = ["Cirdes Henrique"]
  spec.email                 = ["cirdes@gmail.com"]
  spec.description           = "Integração com o novo checkout transparente do Pagseguro."
  spec.summary               = spec.description
  spec.homepage              = "https://github.com/eventick/pagseguro-transparente"
  spec.license               = "MIT"

  spec.files                 = `git ls-files`.split($/)
  spec.executables           = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ["lib"]

  spec.add_dependency "activemodel"
  spec.add_dependency "httparty", '~> 0.13'
  spec.add_dependency "nokogiri", '~> 1.6'
  spec.add_dependency "json", '~> 1.8'
  spec.add_dependency "i18n", '~> 0.6'

  spec.add_development_dependency "bundler", '~> 1.6'
  spec.add_development_dependency "rake", '~> 10.3'
  spec.add_development_dependency "rspec", '~> 2.14'
  spec.add_development_dependency "shoulda-matchers", '2.5'
  spec.add_development_dependency "coveralls", '~> 0.7'
  spec.add_development_dependency "webmock", '~> 1.18'
  spec.add_development_dependency 'thread_safe', '~> 0.2'
end
