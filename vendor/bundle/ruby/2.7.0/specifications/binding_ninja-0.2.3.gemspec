# -*- encoding: utf-8 -*-
# stub: binding_ninja 0.2.3 ruby lib
# stub: ext/binding_ninja/extconf.rb

Gem::Specification.new do |s|
  s.name = "binding_ninja".freeze
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["joker1007".freeze]
  s.bindir = "exe".freeze
  s.date = "2019-04-25"
  s.description = "pass binding of method caller implicitly".freeze
  s.email = ["kakyoin.hierophant@gmail.com".freeze]
  s.extensions = ["ext/binding_ninja/extconf.rb".freeze]
  s.files = ["ext/binding_ninja/extconf.rb".freeze]
  s.homepage = "https://github.com/joker1007/binding_ninja".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "pass binding of method caller implicitly".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<bundler>.freeze, [">= 1.15"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rake-compiler>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
  end
end
