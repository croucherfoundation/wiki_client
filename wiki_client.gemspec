$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "wiki_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name = "wiki_client"
  spec.version = WikiClient::VERSION
  spec.authors = ["yarzardev"]
  spec.email = ["yarzarminwai97@gmail.com"]

  spec.summary = "Wiki client."
  spec.description = "Wiki is nice and clean."
  spec.homepage = "https://github.com/croucherfoundation/wiki_client"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  spec.add_dependency "rails", "~> 6.1"
  spec.add_dependency "paginated_her"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "request_store"
  spec.add_dependency "iso_country_codes"

  spec.add_development_dependency "sqlite3"
end

