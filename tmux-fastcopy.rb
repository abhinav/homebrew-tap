# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TmuxFastcopy < Formula
  desc "easymotion-style text copying for tmux."
  homepage "https://github.com/abhinav/tmux-fastcopy"
  version "0.11.0"
  license "GPL-2.0"

  depends_on "tmux"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.11.0/tmux-fastcopy_ 0.11.0_Darwin_x86_64 .tar.gz"
      sha256 "64c90be4367a7dd7b2a063afce839552f40fd3792d38d86a4163a06311466127"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.11.0/tmux-fastcopy_ 0.11.0_Darwin_arm64 .tar.gz"
      sha256 "39957b643da13a528950964504ac378785451b43ce2435c25c3797d8adde7fb1"

      def install
        bin.install "tmux-fastcopy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.11.0/tmux-fastcopy_ 0.11.0_Linux_arm v6.tar.gz"
      sha256 "684b6ae437aeb5a1577de22e28d1a12a17227777837ebec1dea85b53f78b16d1"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.11.0/tmux-fastcopy_ 0.11.0_Linux_x86_64 .tar.gz"
      sha256 "2dd291134a8d27317f7b2997a703af017b8b6429719d67e3e20d82d04d7a62ac"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.11.0/tmux-fastcopy_ 0.11.0_Linux_arm64 .tar.gz"
      sha256 "77c58e7aa5ea875577ad1ee7a0c81d50872b3ca765ccacacdbe44b76a8df0baf"

      def install
        bin.install "tmux-fastcopy"
      end
    end
  end

  test do
    system "#{bin}/tmux-fastcopy -version"
  end
end
