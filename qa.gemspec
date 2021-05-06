# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'ecommerce.template'
  spec.version       = '0.1'
  spec.authors       = ['Paulo C. M. Citron']
  spec.email         = ['paulo.citron@compasso.com.br']

  spec.summary       = 'BDD - EC TEMPLATE'
  spec.homepage      = ''
  spec.licenses      = ['UNLICENSED']

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec)/})
  end

  spec.bindir = 'bin'

  spec.add_dependency 'cucumber', '3.1.2'
  spec.add_dependency 'capybara'
  spec.add_dependency 'cpf_faker'
  spec.add_dependency 'cucumber_statistics'
  spec.add_dependency 'faker'
  spec.add_dependency 'rspec'
  spec.add_dependency 'site_prism'
  spec.add_dependency 'selenium-webdriver'
  spec.add_dependency 'brazilian_documents'
  spec.add_dependency 'cpf_cnpj'
  spec.add_dependency 'parallel_tests'
  spec.add_dependency 'report_builder'
  spec.add_dependency 'nokogiri'
  spec.add_dependency 'ffi'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'pry'
end
