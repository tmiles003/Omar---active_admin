# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "turn"
  s.version = "0.9.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tim Pease"]
  s.date = "2012-02-02"
  s.description = ""
  s.email = "tim.pease@gmail.com"
  s.executables = ["turn"]
  s.extra_rdoc_files = ["History.txt", "LICENSE-GPL2.txt", "LICENSE-MIT.txt", "LICENSE-RUBY.txt", "LICENSE.txt", "Release.txt", "Version.txt", "bin/turn"]
  s.files = ["bin/turn", "History.txt", "LICENSE-GPL2.txt", "LICENSE-MIT.txt", "LICENSE-RUBY.txt", "LICENSE.txt", "Release.txt", "Version.txt"]
  s.homepage = "http://gemcutter.org/gems/turn"
  s.rdoc_options = ["--main", "README.md"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "turn"
  s.rubygems_version = "1.8.10"
  s.summary = "Test::Unit Reporter (New) -- new output format for Test::Unit"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<ansi>, [">= 0"])
      s.add_runtime_dependency(%q<minitest>, [">= 0"])
      s.add_development_dependency(%q<bones-git>, [">= 0"])
      s.add_development_dependency(%q<bones>, [">= 3.7.3"])
    else
      s.add_dependency(%q<ansi>, [">= 0"])
      s.add_dependency(%q<minitest>, [">= 0"])
      s.add_dependency(%q<bones-git>, [">= 0"])
      s.add_dependency(%q<bones>, [">= 3.7.3"])
    end
  else
    s.add_dependency(%q<ansi>, [">= 0"])
    s.add_dependency(%q<minitest>, [">= 0"])
    s.add_dependency(%q<bones-git>, [">= 0"])
    s.add_dependency(%q<bones>, [">= 3.7.3"])
  end
end
