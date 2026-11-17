# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.6.0'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.6.0/onde-macos-arm64.tar.gz'
      sha256 '001cab12aa0fff616c417dbcd12c1c01cd5b211325e7dd1361d6d4e1ae2259f3'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.6.0/onde-macos-amd64.tar.gz'
      sha256 'bc6578468d54c3277b071f7b64ae43c465e3f38786e81aae445dac4a4c95a1fa'
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
