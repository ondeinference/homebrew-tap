# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.4.1'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.1/onde-macos-arm64.tar.gz'
      sha256 'f158360629cfbebafd0b5e9b85d52f6fef611011f88ff49fcf32df83b7d7d3c4'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.1/onde-macos-amd64.tar.gz'
      sha256 '6a667c020f1d2d61a170077505741ea60d09236a4e91cf106c66824b8703004e'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
