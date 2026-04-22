# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference platform.'
  homepage 'https://ondeinference.com'
  version '0.1.1'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.1.1/onde-macos-arm64.tar.gz'
      sha256 '0000000000000000000000000000000000000000000000000000000000000000'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.1.1/onde-macos-amd64.tar.gz'
      sha256 '0000000000000000000000000000000000000000000000000000000000000000'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
