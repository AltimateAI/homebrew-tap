# typed: false
# frozen_string_literal: true

class AltimateCode < Formula
  desc "AI-powered CLI for SQL analysis, dbt integration, and data engineering"
  homepage "https://github.com/AltimateAI/altimate-code"
  version "0.3.1"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.1/altimate-code-darwin-x64.zip"
      sha256 "a4e47b451fc4deb2b3c45bedcdd1fd2fe32e5647aac46c4a2084fc7796855198"

      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.1/altimate-code-darwin-arm64.zip"
      sha256 "fadee97275c94831d4c85a9f18cd7e533fcb9979b94e448bc2979f079e6355ed"

      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.1/altimate-code-linux-x64.tar.gz"
      sha256 "911b132d8f02b51872cd86ab582452c5c199a1e38ea1f04900dc3ba85b026309"
      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.1/altimate-code-linux-arm64.tar.gz"
      sha256 "e8e3a61af738ea09214d1e51eb070bdaa6db0c73dc4da53df7b49ea67cc6e1e4"
      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
  end
end
