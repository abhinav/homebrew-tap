# typed: false
# frozen_string_literal: true

class Restack < Formula
  desc "Makes interactive Git rebase aware of your branches."
  homepage "https://github.com/abhinav/restack"
  version "0.7.0"
  license "GPL-2.0"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.7.0/restack-darwin-amd64.tar.gz"
      sha256 "ae58641475f56f69a836463a006d089c1660799c56fa9fd5998604afcf2f4c1c"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/restack/releases/download/v0.7.0/restack-darwin-arm64.tar.gz"
      sha256 "18b572781ba73c6aef8934b98f68f2459bf2453ef94a69bdf0b0762888c3cb3e"

      def install
        bin.install "restack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.7.0/restack-linux-arm64.tar.gz"
      sha256 "97f13f1eb494125dbc05451ef22f3811a6da655b4a61dde768848a3536806ea8"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.7.0/restack-linux-amd64.tar.gz"
      sha256 "7e1adc21889c6ad550db37f235438a38aa1fd8fc32b874c808fdda699e34e4ac"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.7.0/restack-linux-armv7.tar.gz"
      sha256 "926b28b9ef602a665ee29d643b0fa136ed7c3f8cc3c465b9f9cf637573aa8341"

      def install
        bin.install "restack"
      end
    end
  end

  test do
    system "#{bin}/restack -version"
  end
end
