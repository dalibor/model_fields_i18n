# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "model_fields_i18n/version"

Gem::Specification.new do |s|
  s.name        = "model_fields_i18n"
  s.version     = ModelFieldsI18n::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dalibor Nasevic"]
  s.email       = ["dalibor.nasevic@gmail.com"]
  s.homepage    = "http://dalibornasevic.com"
  s.summary     = %q{Simple model fields internationalization}
  s.description = %q{Translates model fields stored in the same model}

  s.rubyforge_project = "model_fields_i18n"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", ">= 1.0.10"
  s.add_development_dependency "rspec", "~> 2.6"
  s.add_development_dependency "sqlite3-ruby"

  s.add_dependency "activerecord", "~> 3.0"
end
