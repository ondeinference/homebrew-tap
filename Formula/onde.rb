# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.5.1'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.5.1/onde-macos-arm64.tar.gz'
      sha256 'a771c966c7d0971c349f9602a43facd19a1723cf9221c177598a528239d329e7'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.5.1/onde-macos-amd64.tar.gz'
      sha256 'a59e58525c843628eb0c22351871e6d55f0101b20e0019a5e80547879617b786'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
