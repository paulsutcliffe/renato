# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "metamagic"
  s.version = "2.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lasse Bunk"]
  s.date = "2013-01-28"
  s.description = "Metamagic is a simple Ruby on Rails plugin for creating meta tags."
  s.email = "lassebunk@gmail.com"
  s.homepage = "http://github.com/lassebunk/metamagic"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.25"
  s.summary = "Simple Ruby on Rails plugin for creating meta tags."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
