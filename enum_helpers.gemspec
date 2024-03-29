# frozen_string_literal: true

require_relative "lib/enum_helpers/version"

Gem::Specification.new do |spec|
  spec.name = "enum_helpers"
  spec.version = EnumHelpers::VERSION
  spec.authors = ["Lucas Belenda"]
  spec.email = ["lbelenda@gmail.com"]

  spec.summary = "Enum helpers"
  spec.description = "tool that helps to have nice enums"
  spec.homepage = "https://sinaptia.dev"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.4.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to 'https://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sinaptia/enum_helpers"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord"
  spec.add_dependency "i18n"
end
