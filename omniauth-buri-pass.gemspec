# frozen_string_literal: true

require_relative "lib/omniauth-buri-pass/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-buri-pass"
  spec.version = OmniAuth::BuriPass::VERSION
  spec.authors = ["Franz Delos Reyes"]
  spec.email = ["fjdreyes@gmail.com"]

  spec.summary = "OmniAuth strategy for Buri Pass."
  spec.description = spec.summary
  spec.homepage = "https://github.com/buri-tech/omniauth-buri-pass"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files =
    Dir.chdir(__dir__) do
      `git ls-files -z`.split("\x0")
        .reject do |f|
          (File.expand_path(f) == __FILE__) ||
            f.start_with?(
              *%w[bin/ test/ spec/ features/ .git .circleci appveyor Gemfile]
            )
        end
    end
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-oauth2", "~> 1.7"
end
