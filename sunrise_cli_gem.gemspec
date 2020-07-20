lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sunrise_cli_gem/version'

Gem::Specification.new do |spec|
  spec.name          = "sunrise_cli_gem"
  spec.version       = SunriseCliGem::VERSION
  spec.authors       = ["ndorazil"]
  spec.email         = ["nathandorazil@live.com"]

  spec.summary       = %q{Get your Sunrise and Sunset times right here!}
  spec.description   = %q{Put in your coordinates for any location to find sunrise and sunset times!}
  spec.homepage      = "https://github.com/ndorazil/sunrise_cli_gem"
  spec.license       = "MIT"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.executables   = ["sunrise_cli_gem"]
  spec.require_paths = ["lib"]
  
  spec.add_dependency "http"
  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "json"
  spec.add_development_dependency "httparty"
end
