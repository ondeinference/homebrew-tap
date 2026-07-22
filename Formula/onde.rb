# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.4.0'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.0/onde-macos-arm64.tar.gz'
      sha256 '5d8a80a8cfd0cef6abebd917ba1ae4aa79b74a76993ce264e6218cdf296f9293'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.4.0/onde-macos-amd64.tar.gz'
      sha256 'bc4a02df3d4bbe21f1bda0576a7580ea91ab55d6615a4add8094ee10596ae85e'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
