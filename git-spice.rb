# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSpice < Formula
  desc "A tool for stacking Git branches."
  homepage "https://abhinav.github.io/git-spice/"
  version "0.7.1"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/abhinav/git-spice/releases/download/v0.7.1/git-spice.Darwin-x86_64.tar.gz"
      sha256 "0e76b6bd5106b475d14b34a0b14fc6aa9a96990084a002e1bc08ca250dbee3bf"

      def install
        bin.install "gs"
      end
    end
    on_arm do
      url "https://github.com/abhinav/git-spice/releases/download/v0.7.1/git-spice.Darwin-arm64.tar.gz"
      sha256 "06b8ea29126091d55842db420f5482d623de7707b87bd386df9e4deba27c3e11"

      def install
        bin.install "gs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.7.1/git-spice.Linux-x86_64.tar.gz"
        sha256 "f52b94c976872571224e0250471b101b692228046c9fc7334a6ff1141ae8ecc3"

        def install
          bin.install "gs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.7.1/git-spice.Linux-armv6.tar.gz"
        sha256 "18ff4733e1182a127b72a8faa77d8da17f94ea29481c3c0eee064712a8225dc1"

        def install
          bin.install "gs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.7.1/git-spice.Linux-aarch64.tar.gz"
        sha256 "7b5ab4f408d5395b9c9f3fc77a3dc978a6e322e32505b5c78bdd9c0e8d7fbc99"

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
