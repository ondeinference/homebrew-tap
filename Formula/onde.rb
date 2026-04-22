# frozen_string_literal: true

# Homebrew formula for the Onde Inference CLI (`onde` binary).
class Onde < Formula
  desc 'Command-line interface for Onde Inference'
  homepage 'https://ondeinference.com'
  version '0.2.0'
  license 'MIT OR Apache-2.0'

  on_macos do
    on_arm do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.2.0/onde-macos-arm64.tar.gz'
      sha256 '4eafcc866a0f9595cd34db199b3e090c53343cde9d82c2cf78d50f96a6decfb9'
    end
    on_intel do
      url 'https://github.com/ondeinference/onde-cli/releases/download/v0.2.0/onde-macos-amd64.tar.gz'
      sha256 '12a32e8e78dfa28999ca0ae3123ae9a1981c9cf6e531ca9b19fd163d5da4d9f8'
    end
  end

  def install
    bin.install 'onde'
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/onde --version", 1)
  end
end
