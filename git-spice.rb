# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSpice < Formula
  desc "A tool for stacking Git branches."
  homepage "https://abhinav.github.io/git-spice/"
  version "0.6.0"
  license "GPL-3.0"

  on_macos do
    on_intel do
      url "https://github.com/abhinav/git-spice/releases/download/v0.6.0/git-spice.Darwin-x86_64.tar.gz"
      sha256 "941fa1f4f0c11092b1c5d3d4b9f70629a6cd232cf0138c7a3b071d736030327e"

      def install
        bin.install "gs"
      end
    end
    on_arm do
      url "https://github.com/abhinav/git-spice/releases/download/v0.6.0/git-spice.Darwin-arm64.tar.gz"
      sha256 "e8dcfd1325551b978cf766c6f70d43316f492f450212436999822282157ca60d"

      def install
        bin.install "gs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.6.0/git-spice.Linux-x86_64.tar.gz"
        sha256 "a317a18c958292abecd160f0ef5736c23b1acb2450e5010dfc1ffd34c4c6ea1e"

        def install
          bin.install "gs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.6.0/git-spice.Linux-armv6.tar.gz"
        sha256 "6f831b0efb4d581de2e038a6a312f48f9f67e732130597501b86fbe721c4abdf"

        def install
          bin.install "gs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.6.0/git-spice.Linux-aarch64.tar.gz"
        sha256 "98e1839853ca72628f5fe38d9c356547477caec9bec371707f16e0a0e6fdb863"

        def install
          bin.install "gs"
        end
      end
    end
  end

  test do
    system "#{bin}/gs --version"
  end
end
