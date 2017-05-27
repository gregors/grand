# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grand/version'

Gem::Specification.new do |spec|
  spec.name          = 'grand'
  spec.version       = GRand::VERSION
  spec.authors       = ["Gregory Ostermayr"]
  spec.email         = ["<gregory.ostermayr@gmail.com>"]

  spec.summary       = %q{I needed randn from numpy in ruby.}
  spec.description   = %q{I needed randn from numpy in ruby.}
  spec.homepage      = 'https://github.com/gregors/grand'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'rubystats', '~> 0.2.5'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
