# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.4.3'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.3/onde-macos-arm64.tar.gz'
      sha256 '7b19af5b8b42e8d33962d130950eba7001fa8a24d0b14af940bb0db95565322e'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.3/onde-macos-amd64.tar.gz'
      sha256 '1ff039ac26833e712f61d427b359b01b8e282fdb254493a4f446335810241d99'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
