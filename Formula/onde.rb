# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.5.0'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.5.0/onde-macos-arm64.tar.gz'
      sha256 'fe9bacb6bb2d0a931e5607fc618555a9dc3b75a05561d8c1d168d3a245e771b2'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.5.0/onde-macos-amd64.tar.gz'
      sha256 'b01b8f00bae18b9e54b48c6d34fc044425816b7b5de8b1563a04b0cb6aa7461e'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
