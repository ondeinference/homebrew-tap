# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.6.1'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.6.1/onde-macos-arm64.tar.gz'
      sha256 'b62d298d57903d36554e421c5c2c772e06859f4ef0d89a7626cac0b6000f40d9'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.6.1/onde-macos-amd64.tar.gz'
      sha256 'd9d146b75a9cb43245ee21bd8774d96f394879a6a055cbcea07a8b58ca6432a0'
    end
  end

  def install
    bin.install 'onde'
    # Apple Silicon archives carry the MLX Metal kernels; MLX looks for
    # them next to the binary.
    bin.install 'mlx.metallib' if File.exist?('mlx.metallib')
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
