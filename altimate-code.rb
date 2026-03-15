# typed: false
# frozen_string_literal: true

class AltimateCode < Formula
  desc "AI-powered CLI for SQL analysis, dbt integration, and data engineering"
  homepage "https://github.com/AltimateAI/altimate-code"
  version "0.3.0"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.0/altimate-code-darwin-x64.zip"
      sha256 "5fe9c3f381f65936ff6c03f8694cce7c65791a2181b569a0609b46ff7be877c8"

      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.0/altimate-code-darwin-arm64.zip"
      sha256 "c119bb1e9606a74bab57d7ebffe88b1fd75a33c8c68dcf629fb5243930d85e8b"

      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.0/altimate-code-linux-x64.tar.gz"
      sha256 "862cd59fe13f8c72f703ce2fafae60049c583411435a47d183c72bf8e022d1c1"
      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/AltimateAI/altimate-code/releases/download/v0.3.0/altimate-code-linux-arm64.tar.gz"
      sha256 "56627e6f7b73be799e88498b32f54bd3a526e7d9697740134df2f23f09f8708a"
      def install
        bin.install "altimate"
        bin.install_symlink "altimate" => "altimate-code"
      end
    end
  end
end
