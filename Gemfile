source 'https://rubygems.org'

gemspec

group :development do
  if File.exist?(File.expand_path("../../vagrant", __FILE__))
    gem 'vagrant', path: "../vagrant"
  else
    gem 'vagrant', :git => 'https://github.com/hashicorp/vagrant.git', branch: "main"
  end
  gem 'rake', '>= 12.3.3'
end
