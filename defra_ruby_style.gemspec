# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("lib", __dir__)

# Maintain your gem"s version:
require "defra/style/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "defra_ruby_style"
  spec.version     = Defra::Style::VERSION.dup
  spec.authors     = ["Defra"]
  spec.email       = ["alan.cruikshanks@environment-agency.gov.uk"]
  spec.license     = "The Open Government Licence (OGL) Version 3"
  spec.homepage    = "https://github.com/DEFRA/defra-ruby-style"
  spec.summary     = "Defra ruby coding standards"
  spec.description = "A gem to simplify the process of ensuring ruby based "\
                     "Defra projects are using our agreed coding style and "\
                     "standards."

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ["lib"]

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.add_dependency "rubocop"
end
