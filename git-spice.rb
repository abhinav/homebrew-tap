# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitSpice < Formula
  desc "A tool for stacking Git branches."
  homepage "https://abhinav.github.io/git-spice/"
  version "0.7.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_intel do
      url "https://github.com/abhinav/git-spice/releases/download/v0.7.0/git-spice.Darwin-x86_64.tar.gz"
      sha256 "a972a85c333df464fb32c2477da32fe64314431c87fc5cab05b36533a1706b31"

      def install
        bin.install "gs"
      end
    end
    on_arm do
      url "https://github.com/abhinav/git-spice/releases/download/v0.7.0/git-spice.Darwin-arm64.tar.gz"
      sha256 "7bf6936f5de6f7c79b38671ef33c96b822ba4a23b676e8aa7ed752c6e4e6f2a0"

      def install
        bin.install "gs"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.7.0/git-spice.Linux-x86_64.tar.gz"
        sha256 "0b04be393cb6c2b5401c0d1f37b6bff119e498cab3a8ceaa26a075207ad8c207"

        def install
          bin.install "gs"
        end
      end
    end
    on_arm do
      if !Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.7.0/git-spice.Linux-armv6.tar.gz"
        sha256 "fd165d792f3087c27b1dbda09a0fffd4cb1c74cc145036376bd41bb12a0b5be6"

        def install
          bin.install "gs"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/abhinav/git-spice/releases/download/v0.7.0/git-spice.Linux-aarch64.tar.gz"
        sha256 "91878cf80abc57d378b7fb937f9527a6c1f470461a25b0dff3a1f5d0ed0e5d00"

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
