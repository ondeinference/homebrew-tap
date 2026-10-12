# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.4.2'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.2/onde-macos-arm64.tar.gz'
      sha256 '183bbbbef1eac6a51b767012195ba7cdab62f05485dd64d59c73af487bab028f'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.2/onde-macos-amd64.tar.gz'
      sha256 'e3b58f7d63f8574d814dca030e781f83d644bfe56f14526d66ae4bc55e620ce4'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
