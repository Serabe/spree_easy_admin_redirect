# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_easy_admin_redirect'
  s.version     = '2.3.1'
  s.summary     = 'Provides easy redirection in Spree after login in.'
  s.description = 'Provides easy redirection in Spree after login in.'
  s.required_ruby_version = '>= 1.9.3'
  s.licenses = ["MIT"]

  s.authors    = ['Sergio Arbeo']
  s.email     = 'serabe@gmail.com'
  s.homepage  = 'https://github.com/Serabe/spree_easy_admin_redirect'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2.3.1'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.4'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'rspec-rails',  '~> 3.0'
  s.add_development_dependency 'sass-rails', '~> 4.0.2'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
