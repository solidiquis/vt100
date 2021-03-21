# frozen_string_literal: true

require_relative "lib/vt100/version"

Gem::Specification.new do |spec|
  spec.name          = "vt100"
  spec.version       = Vt100::VERSION
  spec.authors       = ["Benjamin Nguyen"]
  spec.email         = ["benjamin.van.nguyen@gmail.com"]

  spec.summary       = "ANSI escape sequences to control the terminal's font, color, and cusor with ease."
  spec.homepage      = "https://github.com/solidiquis/vt100"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
