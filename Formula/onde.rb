# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.2.1'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.2.1/onde-macos-arm64.tar.gz'
      sha256 'a476022bd85a11dd5c380d4ed1f5662a6f2dd64c17b247c8ce6f305eaf76220a'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.2.1/onde-macos-amd64.tar.gz'
      sha256 'b5846c808e57afe0ede4a837bcf01fd2ff5053d0650f3b199b43e4de054475f5'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
