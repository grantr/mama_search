# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mama_search/version"

Gem::Specification.new do |s|
  s.name        = "mama_search"
  s.version     = MamaSearch::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Grant Rodgers"]
  s.email       = ["grantr@gmail.com"]
  s.homepage    = "http://github.com/grantr/mama_search"
  s.summary     = %q{Rails 3 generator and rake tasks to install, start and interact with elasticsearch}
  s.description = %q{Rails 3 generator and rake tasks to install, start and interact with elasticsearch}

  s.rubyforge_project = "mama_search"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency 'rails', '~> 3.0'
  s.add_dependency 'rake'
  s.add_dependency 'rubberband'
  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'aruba'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'sqlite3-ruby'
end
