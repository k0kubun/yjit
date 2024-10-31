# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "yjit"
  spec.version = "0.1.0"
  spec.authors = ["Takashi Kokubun"]
  spec.email = ["takashikkbn@gmail.com"]

  spec.summary = "Enable YJIT"
  spec.description = "RubyVM::YJIT.enable"
  spec.homepage = "https://github.com/k0kubun/yjit"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.3.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/k0kubun/yjit"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
