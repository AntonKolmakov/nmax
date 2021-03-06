lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative 'lib/nmax/version'

Gem::Specification.new do |spec|
  spec.name          = "nmax"
  spec.version       = Nmax::VERSION
  spec.authors       = ["Anton Kolmakov"]
  spec.email         = ["konfonx@gmail.com"]

  spec.summary       = %q{nmax you up!}
  spec.homepage      = 'https://rubygems.org/gems/nmax'
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
