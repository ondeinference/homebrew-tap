# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.3.1'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.3.1/onde-macos-arm64.tar.gz'
      sha256 '5384470b0b7219cac1b034ebd85723a8daa8908effec171333cdefc9e3c0e468'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.3.1/onde-macos-amd64.tar.gz'
      sha256 'ddc9e62c10bc344d354436af4426f7af523e3b8ca533ad9e54502f9c9ff1dac8'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
