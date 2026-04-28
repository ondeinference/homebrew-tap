# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.3.0'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.3.0/onde-macos-arm64.tar.gz'
      sha256 '24b9e0f43ecd440dcaef166274083426ea6b1e6cdad0dbcb822ed75f8bd10a71'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.3.0/onde-macos-amd64.tar.gz'
      sha256 '563e04d7386b805a1efe8823de96d9202429994f9cfb4d22670d33ecb50ca26a'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
