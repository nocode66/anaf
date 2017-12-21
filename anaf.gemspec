# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'anaf/version'

Gem::Specification.new do |spec|
  spec.name          = "anaf"
  spec.version       = Anaf::VERSION
  spec.authors       = ["Cristian Georgescu"]
  spec.email         = ["georgescu.cristi@gmail.com"]

  spec.summary       = %q{Get information about a Romanian company by interogating the webserbice of the National Agentcy of Fiscal Administration.}
  spec.description   = %q{Get information about a Romanian company by interogating the webserbice of the National Agentcy of Fiscal Administration.}
  spec.homepage      = "https://github.com/nocode66/anaf"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/nocode66/anaf"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
