# -*- encoding: utf-8 -*-
# stub: ffaker 2.18.0 ruby lib

Gem::Specification.new do |s|
  s.name = "ffaker".freeze
  s.version = "2.18.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "changelog_uri" => "https://github.com/ffaker/ffaker/blob/main/Changelog.md", "documentation_uri" => "https://github.com/ffaker/ffaker/blob/main/REFERENCE.md" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["https://github.com/ffaker/ffaker/graphs/contributors".freeze, "Emmanuel Oga".freeze]
  s.date = "2021-02-21"
  s.description = "Ffaker generates dummy data.".freeze
  s.email = "EmmanuelOga@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE".freeze, "Changelog.md".freeze]
  s.files = ["Changelog.md".freeze, "LICENSE".freeze, "README.md".freeze]
  s.homepage = "https://github.com/ffaker/ffaker".freeze
  s.licenses = ["MIT".freeze]
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.0.3".freeze
  s.summary = "Ffaker generates dummy data.".freeze

  s.installed_by_version = "3.0.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 2

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_development_dependency(%q<test-unit>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
      s.add_dependency(%q<rubocop>.freeze, [">= 0"])
      s.add_dependency(%q<test-unit>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<test-unit>.freeze, [">= 0"])
  end
end
