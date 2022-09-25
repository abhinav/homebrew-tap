# typed: false
# frozen_string_literal: true

class Restack < Formula
  desc "Makes interactive Git rebase aware of your branches."
  homepage "https://github.com/abhinav/restack"
  version "0.6.0"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.6.0/restack-darwin-amd64.tar.gz"
      sha256 "17df0a8b58ecada550bc233c25172b2aa119081b59f24b80f02b4173dbee77b6"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/restack/releases/download/v0.6.0/restack-darwin-arm64.tar.gz"
      sha256 "0e08fd8f23e1c11708ab0119b1c7c29688b56ec9141d146420b732b11e5ace35"

      def install
        bin.install "restack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.6.0/restack-linux-arm64.tar.gz"
      sha256 "77cdb5da042264e4393d9150c43ad3035a243dde665282043432b0ec57d7fa3f"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.6.0/restack-linux-amd64.tar.gz"
      sha256 "953baadaa008293257627ce0fa541671105f13584826c7c291765654896fabe5"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.6.0/restack-linux-armv7.tar.gz"
      sha256 "90b3e6e2aa106569c0ba93cf87f2d93eeb3e5b2056108f7c3931f7c073df6896"

      def install
        bin.install "restack"
      end
    end
  end

  test do
    system "#{bin}/restack -version"
  end
end
