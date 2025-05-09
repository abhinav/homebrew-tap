# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSpice < Formula
  desc "A tool for stacking Git branches."
  homepage "https://abhinav.github.io/git-spice/"
  version "0.13.0"
  license "GPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/git-spice/releases/download/v0.13.0/git-spice.Darwin-x86_64.tar.gz"
      sha256 "92795833a9335388ccb99c86a7f2afb6540636dcf7dc1b394ed8c50bd380a4cf"

      def install
        bin.install "gs"
        generate_completions_from_executable(bin/"gs", "shell", "completion")
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/git-spice/releases/download/v0.13.0/git-spice.Darwin-arm64.tar.gz"
      sha256 "73025228ec0101ad0131c852240d8133455f8999991528f83cf1ca2a6dd7b8d6"

      def install
        bin.install "gs"
        generate_completions_from_executable(bin/"gs", "shell", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.13.0/git-spice.Linux-x86_64.tar.gz"
        sha256 "7f5788bb9afda84fb8759895916c75f06f36751d0b2d5e4b178f16568cc46fbd"

        def install
          bin.install "gs"
          generate_completions_from_executable(bin/"gs", "shell", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.13.0/git-spice.Linux-armv6.tar.gz"
        sha256 "d6ba346b935993f5292b2645ffdb81d755d41dde737beacc2de13a74c5c28fa9"

        def install
          bin.install "gs"
          generate_completions_from_executable(bin/"gs", "shell", "completion")
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.13.0/git-spice.Linux-aarch64.tar.gz"
        sha256 "99f7cbe6e3775a5764c8d870c5e957c2d37472521c9de4ead143795cfcbaf34c"

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
