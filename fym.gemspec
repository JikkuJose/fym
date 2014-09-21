lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'fym'
  s.version       = '0.0.1'
  s.authors       = ['Jikku Jose']
  s.email         = ['jikkujose@gmail.com']
  s.summary       = "API wrapper for FYM"
  s.description   = "API wrapper for FYM service"
  s.files         = `git ls-files -z`.split("\x0")
  s.license       = "MIT"
  s.homepage      = "http://github.com/JikkuJose/fym"
  s.require_paths = ["lib"]
  s.executables   = ["fym"]

  s.add_dependency 'unirest', '~> 1.1'

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake', '~> 10'
end
