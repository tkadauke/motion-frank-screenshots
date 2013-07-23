Gem::Specification.new do |spec|
  spec.name          = "motion-frank-screenshots"
  spec.version       = "0.0.1"
  spec.authors       = ["Thomas Kadauke"]
  spec.email         = ["thomas.kadauke@googlemail.com"]
  spec.description   = %q{Take automated screenshots for RubyMotion apps using Frank}
  spec.summary       = %q{Take automated screenshots for RubyMotion apps using Frank}
  spec.homepage      = "https://github.com/tkadauke/motion-frank-screenshots"

  files = []
  files << 'README.md'
  files.concat(Dir.glob('lib/**/*.rb'))
  spec.files         = files
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_dependency "motion-frank"
  spec.add_dependency "bubble-wrap"
end
