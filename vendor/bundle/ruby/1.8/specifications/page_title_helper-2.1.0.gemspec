# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "page_title_helper"
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Lukas Westermann"]
  s.date = "2012-04-11"
  s.description = "Simple, internationalized and DRY page titles and headings for rails."
  s.email = ["lukas.westermann@gmail.com"]
  s.homepage = "http://github.com/lwe/page_title_helper"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.rubygems_version = "1.8.25"
  s.summary = "Simple, internationalized and DRY page titles and headings for Rails."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.0.0"])
      s.add_development_dependency(%q<rake>, [">= 0.9.2"])
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.0.0"])
      s.add_dependency(%q<rake>, [">= 0.9.2"])
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.0.0"])
    s.add_dependency(%q<rake>, [">= 0.9.2"])
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end
