require_relative 'lib/nmax/version'

Gem::Specification.new do |spec|
  spec.name          = "nmax"
  spec.version       = Nmax::VERSION
  spec.authors       = ["Anton Kolmakov"]
  spec.email         = ["konfonx@gmail.com"]
  spec.summary       = %q{nmax you up!}
  spec.description   = %q{allows you to find the n max integers in text}
  spec.homepage      = 'https://rubygems.org/gems/nmax'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")
  spec.executables   << 'nmax'
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
