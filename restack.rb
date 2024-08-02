# typed: false
# frozen_string_literal: true

class Restack < Formula
  desc "Makes interactive Git rebase aware of your branches."
  homepage "https://github.com/abhinav/restack"
  version "0.8.0"
  license "GPL-2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.8.0/restack-darwin-amd64.tar.gz"
      sha256 "63875f9f542f1c4f6bd985de42f435cec32057cc4d72061d1012cd6c556cbe12"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/restack/releases/download/v0.8.0/restack-darwin-arm64.tar.gz"
      sha256 "3ef35811b5d896266fef644267adcef9970f0afeadc93525791f71c7554b2be5"

      def install
        bin.install "restack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.8.0/restack-linux-arm64.tar.gz"
      sha256 "8b1935eea19b1455fad442088ba085e125010cdc8f91d0f2afdb4f8cb4a4ae2a"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.8.0/restack-linux-amd64.tar.gz"
      sha256 "55d79209e3ee2b6909458df20e4052003f5aea5f44029c79c994f79674e37ac3"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.8.0/restack-linux-armv7.tar.gz"
      sha256 "745359f1e780776f78f28e2831dbb1a8efa64d83213fe3f527c7a49d817139f4"

      def install
        bin.install "restack"
      end
    end
  end

  test do
    system "#{bin}/restack -version"
  end
end
