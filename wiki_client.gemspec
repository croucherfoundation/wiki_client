require_relative "lib/wiki_client/version"

Gem::Specification.new do |spec|
  spec.name = "wiki_client"
  spec.version = WikiClient::VERSION
  spec.authors = ["yarzardev"]
  spec.email = ["yarzarminwai97@gmail.com"]

  spec.summary = "Wiki client."
  spec.description = "Wiki is nice and clean."
  spec.homepage = "https://github.com/croucherfoundation/wiki_client"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = spec.homepage

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  
  spec.add_dependency 'httparty', '~> 0.19'
end
