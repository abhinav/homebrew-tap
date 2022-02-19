# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Restack < Formula
  desc "Makes interactive Git rebase nicer."
  homepage "https://github.com/abhinav/restack"
  version "0.5.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/restack/releases/download/v0.5.3/restack_0.5.3_Darwin_arm64.tar.gz"
      sha256 "b6c7feb6dbe0e54399df2577343b2b26c843b7f19dbf696a34b1e7bb82c6f996"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.5.3/restack_0.5.3_Darwin_x86_64.tar.gz"
      sha256 "836e80e77745b1f469edc4906ecf75a1bc974e05235ced6c6ea4c1b43f5a1a60"

      def install
        bin.install "restack"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.5.3/restack_0.5.3_Linux_x86_64.tar.gz"
      sha256 "6eaa536690174241e70db25985c5792e5764ffb9a3a0f406ac13990674d95fda"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.5.3/restack_0.5.3_Linux_armv6.tar.gz"
      sha256 "60f3b59d4b22a4e745c033aff9ce188c5ab92070705866d567e75ee1aae388c1"

      def install
        bin.install "restack"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.5.3/restack_0.5.3_Linux_arm64.tar.gz"
      sha256 "8db639b51e0f064b9f7c89b935f95da3895d9ad248313ce9ba6de43a9ff2e6f6"

      def install
        bin.install "restack"
      end
    end
  end

  depends_on "git"

  test do
    system "#{bin}/restack -version"
  end
end
