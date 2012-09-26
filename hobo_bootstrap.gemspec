name = File.basename( __FILE__, '.gemspec' )
version = File.read(File.expand_path('../VERSION', __FILE__)).strip
require 'date'

Gem::Specification.new do |s|

  s.authors = ['Ignacio Huerta']
  s.email = 'ignacio@ihuerta.net'
  s.homepage = 'https://github.com/suyccom/hobo_bootstrap'
  s.rubyforge_project = 'hobo'
  s.summary = 'A bootstrap based theme for Hobo'
  s.description = 'A bootstrap based theme for Hobo'

  s.add_runtime_dependency('hobo', "~> 2.0.0")
  s.add_runtime_dependency('hobo_jquery_ui', ["= #{version}"])
  s.add_runtime_dependency "compass_twitter_bootstrap", "~> 2.0.3"
  s.add_runtime_dependency "compass-rails", "~> 1.0.3"
  s.add_runtime_dependency "will_paginate-bootstrap", "~> 0.2.1"

  s.files = `git ls-files -x #{name}/* -z`.split("\0")

  s.name = name
  s.version = version
  s.date = Date.today.to_s

  s.required_rubygems_version = ">= 1.3.6"
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib", "vendor", "taglibs"]

end
