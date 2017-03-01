# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_ember_app/version'

Gem::Specification.new do |spec|
  spec.name          = "with_ember_app"
  spec.version       = WithEmberApp::VERSION
  spec.authors       = ["John Ratcliff"]
  spec.email         = ["john.w.ratcliff@biola.edu"]

  spec.summary       = %q{ ... }
  #spec.homepage      = " ... "
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://mygemserver.com"
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

  spec.add_dependency "activesupport",         ">= 4.2.0", "< 5"
  spec.add_dependency "actionview",            ">= 4.2.0", "< 5"
  spec.add_dependency "attr_lazy",             "~> 0.0.2"
  spec.add_dependency "active_interaction",    ">= 1.6.0"
  spec.add_dependency "slim",                  "~> 3.0"

  spec.add_development_dependency "bundler",   "~> 1.13"
  spec.add_development_dependency "rake",      "~> 10.0"
  spec.add_development_dependency "rspec",     "~> 3.0"
end