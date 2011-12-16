# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "padrino-custom-generators/version"
PADRINO_VERSION = ENV['PADRINO_VERSION'] ? ENV['PADRINO_VERSION'] : '0.10.5'

Gem::Specification.new do |s|
  s.name        = "padrino-custom-generators"
  s.version     = Padrino::Custom::Generators::VERSION
  s.authors     = ["Bala Nair"]
  s.email       = ["bnairtm@comcast.net"]
  s.homepage    = ""
  s.summary     = %q{Custom Padrino generators}
  s.description = %q{Custom generators for Padrino applications}

  # s.rubyforge_project = "padrino-custom-generators"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.rdoc_options  = ["--charset=UTF-8"]

  # specify gem dependencies here.
  # will be picked up by bundler and added to Gemfile
  s.add_dependency("padrino-core", PADRINO_VERSION)
  s.add_dependency("padrino-helpers", PADRINO_VERSION)
end
