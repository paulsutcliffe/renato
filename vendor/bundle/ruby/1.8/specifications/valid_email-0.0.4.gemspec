# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "valid_email"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ramihajamalala Hery"]
  s.date = "2012-01-23"
  s.description = "ActiveModel Validation for email"
  s.email = ["hery@rails-royce.org"]
  s.homepage = "http://my.rails-royce.org/2010/07/21/email-validation-in-ruby-on-rails-without-regexp"
  s.require_paths = ["lib"]
  s.rubyforge_project = "valid_email"
  s.rubygems_version = "1.8.25"
  s.summary = "ActiveModel Validation for email"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_runtime_dependency(%q<mail>, [">= 0"])
      s.add_runtime_dependency(%q<activemodel>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<mail>, [">= 0"])
      s.add_dependency(%q<activemodel>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<mail>, [">= 0"])
    s.add_dependency(%q<activemodel>, [">= 0"])
  end
end
