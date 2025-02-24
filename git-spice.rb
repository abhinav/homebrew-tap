# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSpice < Formula
  desc "A tool for stacking Git branches."
  homepage "https://abhinav.github.io/git-spice/"
  version "0.11.0"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/git-spice/releases/download/v0.11.0/git-spice.Darwin-x86_64.tar.gz"
      sha256 "1871cc3c52a9e2d13493266b542ae5a3151fe28e19ac8d852fcdcff1b1e480da"

      def install
        bin.install "gs"
        generate_completions_from_executable(bin/"gs", "shell", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/git-spice/releases/download/v0.11.0/git-spice.Darwin-arm64.tar.gz"
      sha256 "e0a60890683c6bd96e2f0f5b80e715924f98894b27b02080efce65f13f5f793f"

      def install
        bin.install "gs"
        generate_completions_from_executable(bin/"gs", "shell", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.11.0/git-spice.Linux-x86_64.tar.gz"
        sha256 "c690ace8df664c73c725e04430d9e4be16cce4f0c9ecfe6364a96cc770ff25ff"

        def install
          bin.install "gs"
          generate_completions_from_executable(bin/"gs", "shell", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.11.0/git-spice.Linux-armv6.tar.gz"
        sha256 "a30c5a2f02a2140ab2824ccef5e7d6f3f8d4f0a1537bf3d4354c2b4c3bb9cdd4"

        def install
          bin.install "gs"
          generate_completions_from_executable(bin/"gs", "shell", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.11.0/git-spice.Linux-aarch64.tar.gz"
        sha256 "f282cc317e25f0c9f4de6adbc5911c3874bf4a27299f7b55d3ca2ae44da313a7"

        def install
          bin.install "gs"
          generate_completions_from_executable(bin/"gs", "shell", "completion")
        end
      end
    end
  end

  test do
    system "#{bin}/gs --version"
  end
end
