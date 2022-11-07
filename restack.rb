# typed: false
# frozen_string_literal: true

class Restack < Formula
  desc "Makes interactive Git rebase aware of your branches."
  homepage "https://github.com/abhinav/restack"
  version "0.6.1"
  license "MIT"

  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.6.1/restack-darwin-amd64.tar.gz"
      sha256 "722c007ef00f4b52dd8de99f2491f95fc8588b7f72b8efb3153cb2dfe47352d4"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/restack/releases/download/v0.6.1/restack-darwin-arm64.tar.gz"
      sha256 "d561b33899a910338f46755687a7098897a9436d5e217cb49014b0e03652eee3"

      def install
        bin.install "restack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.6.1/restack-linux-arm64.tar.gz"
      sha256 "e5269ad4b41e72e413496fe9c45abcb3b34f877276fd0b45d11212149054dfee"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.6.1/restack-linux-amd64.tar.gz"
      sha256 "90c04ceec4979658d0f3d7091234852362154e1125fdfbf230990768a6ad5da0"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.6.1/restack-linux-armv7.tar.gz"
      sha256 "43b5e3fbdc8879dbf2098687b84543ed03e842bd44465c33aef169c38fb2b4b5"

      def install
        bin.install "restack"
      end
    end
  end

  test do
    system "#{bin}/restack -version"
  end
end
