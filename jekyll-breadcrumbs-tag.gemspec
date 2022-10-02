# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "breadcrumbs/version"

Gem::Specification.new do |spec|
  spec.name = "jekyll-breadcrumbs-tag"
  spec.version = Breadcrumbs::VERSION
  spec.authors = [""]
  spec.email = [""]

  spec.summary = "Breadcrumbs tag for Jekyll"
  spec.description = "Breadcrumbs tag for Jekyll"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["source_code_uri"] = "https://github.com/colorfulcompany/jekyll-breadcrumbs-tag"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "jekyll"
end
