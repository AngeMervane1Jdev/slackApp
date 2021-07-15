# -*- encoding: utf-8 -*-
# stub: unparser 0.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "unparser".freeze
  s.version = "0.6.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/mbj/unparser/issues", "changelog_uri" => "https://github.com/mbj/unparser/blob/master/Changelog.md", "funding_uri" => "https://github.com/sponsors/mbj" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Markus Schirp".freeze]
  s.date = "2021-01-16"
  s.description = "Generate equivalent source for parser gem AST nodes".freeze
  s.email = "mbj@schirp-dso.com".freeze
  s.executables = ["unparser".freeze]
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze, "bin/unparser".freeze]
  s.homepage = "http://github.com/mbj/unparser".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Generate equivalent source for parser gem AST nodes".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
    s.add_runtime_dependency(%q<parser>.freeze, [">= 3.0.0"])
    s.add_development_dependency(%q<mutant>.freeze, ["~> 0.10.25"])
    s.add_development_dependency(%q<mutant-rspec>.freeze, ["~> 0.10.25"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<rspec-core>.freeze, ["~> 3.9"])
    s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.3.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.7"])
    s.add_development_dependency(%q<rubocop-packaging>.freeze, ["~> 0.5"])
  else
    s.add_dependency(%q<diff-lcs>.freeze, ["~> 1.3"])
    s.add_dependency(%q<parser>.freeze, [">= 3.0.0"])
    s.add_dependency(%q<mutant>.freeze, ["~> 0.10.25"])
    s.add_dependency(%q<mutant-rspec>.freeze, ["~> 0.10.25"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    s.add_dependency(%q<rspec-core>.freeze, ["~> 3.9"])
    s.add_dependency(%q<rspec-its>.freeze, ["~> 1.3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rubocop-packaging>.freeze, ["~> 0.5"])
  end
end
