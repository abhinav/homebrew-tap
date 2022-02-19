# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TmuxFastcopy < Formula
  desc "easymotion-style text copying for tmux."
  homepage "https://github.com/abhinav/tmux-fastcopy"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.7.2/tmux-fastcopy_0.7.2_Darwin_x86_64.tar.gz"
      sha256 "cae815a14ae10ace9dd9baf49fc5815c4334580a64b6fbb93bb709a8364e6c09"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.7.2/tmux-fastcopy_0.7.2_Darwin_arm64.tar.gz"
      sha256 "b972393ee8cd4b19d47d083efe4034053eab39a7df85b534cd961eb9577dcf03"

      def install
        bin.install "tmux-fastcopy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.7.2/tmux-fastcopy_0.7.2_Linux_armv6.tar.gz"
      sha256 "92c3717d3379e5423240d14fb321c8f1e6b05bf6044c75f6cc736d1e9a96d6e7"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.7.2/tmux-fastcopy_0.7.2_Linux_arm64.tar.gz"
      sha256 "e3e3134ffe685b6e72e9f177f017dd28f7a1d89eaa34d6fe39a664af68b16fec"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.7.2/tmux-fastcopy_0.7.2_Linux_x86_64.tar.gz"
      sha256 "63ca85b637bd309c8de7ab0205c341eb27eb65335ff10f86630569bbf2ca5c80"

      def install
        bin.install "tmux-fastcopy"
      end
    end
  end

  depends_on "tmux"

  test do
    system "#{bin}/tmux-fastcopy -version"
  end
end
