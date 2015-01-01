version = File.read('VERSION')

Gem::Specification.new do |spec|
  spec.name          = "api_test_tool"
  spec.version       = version
  spec.authors       = ["Tomasz Nazar"]
  spec.email         = ["tomasz.nazar@gmail.com"]
  spec.summary       = %q{Acceptance testing tool}
  spec.description   = %q{Acceptance testing tool for regression testing of your application API}
  spec.homepage      = "https://github.com/nthx/api_test_tool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
