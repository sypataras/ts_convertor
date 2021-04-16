# frozen_string_literal: true

require_relative 'lib/ts_convertor/version'

Gem::Specification.new do |spec|
  spec.name          = 'ts_convertor'
  spec.version       = TsConvertor::VERSION
  spec.authors       = ['sypataras']
  spec.email         = ['sypenko88@gmail.com']

  spec.summary       = 'convertor'
  spec.description   = 'convert all metrics'
  spec.homepage      = 'https://rubygems.org/gems/ts_convertor'
  spec.required_ruby_version = '>= 2.6.0'

  #spec.metadata['allowed_push_host'] = 'https://github.com/sypataras/ts_convertor'

  #spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/sypataras/ts_convertor'
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
