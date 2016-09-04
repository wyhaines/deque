# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'deque/version'

Gem::Specification.new do |spec|
  spec.name          = "deque"
  spec.version       = Deque::VERSION
  spec.authors       = ["Kirk Haines"]
  spec.email         = ["wyhaines@gmail.com"]

  spec.summary       = %q{A Deque data structure for Ruby.}
  spec.description   = %q{A Deque is a queue type data structure that allows efficient insertion and deletion from both ends of the queue. This implementation wrapps the standard C++ structure of the same name.}
  spec.homepage      = "http://github.com/wyhaines/deque"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib/deque"]
  spec.extensions = %w[ext/deque/extconf.rb]
  
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake-compiler", "~> 0"

end
