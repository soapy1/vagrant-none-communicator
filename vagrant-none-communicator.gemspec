# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name          = "vagrant-none-communicator"
  gem.version       = File.read('VERSION').chop
  gem.authors       = ["Sophia Castellarin"]
  gem.email         = ["scastellarin95@gmail.com"]
  gem.description   = "Vagrant communicator plugin for not communicating with guests"
  gem.summary       = "The Vagrant plugin will allow Vagrant to silently pass through not connecting to a guest"
  gem.license       = 'MIT'
  gem.homepage      = "https://github.com/soapy1/vagrant-none-communicator"

  gem.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|testdrive)/}) }
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.require_paths = ["lib"]
end
