require_relative "lib/api_base/version"

Gem::Specification.new do |spec|
  spec.name        = "api_base"
  spec.version     = ApiBase::VERSION
  spec.authors     = [ "subash" ]
  spec.email       = [ "waytosubash@gmail.com" ]
  spec.homepage    = "http://downtime-io-admin.com/homepage"
  spec.summary     = "ApiBase page"
  spec.description = "Api request handler as an engine"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://downtime-io-api-base.com/src"
  spec.metadata["changelog_uri"] = "http://downtime-io-api-base.com/change_logs"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 8.0.3"
end
