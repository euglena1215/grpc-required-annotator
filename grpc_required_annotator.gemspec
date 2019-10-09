lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "grpc_required_annotator/version"

Gem::Specification.new do |spec|
  spec.name          = "grpc_required_annotator"
  spec.version       = GrpcRequiredAnnotator::VERSION
  spec.authors       = ["Shintani Teppei"]
  spec.email         = ["teppest1215@gmail.com"]

  spec.summary       = %q{Annotator for null validation of gRPC requests using `required`}
  spec.description   = %q{Annotator for null validation of gRPC requests using `required`}
  spec.homepage      = "https://github.com/euglena1215/grpc_required_annotator"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/euglena1215/grpc_required_annotator"
  spec.metadata["changelog_uri"] = "https://github.com/euglena1215/grpc_required_annotator/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "grpc"
  spec.add_runtime_dependency "google-protobuf"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "codecov"
end
