# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class TmuxFastcopy < Formula
  desc "easymotion-style text copying for tmux."
  homepage "https://github.com/abhinav/tmux-fastcopy"
  version "0.6.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.6.2/tmux-fastcopy_0.6.2_Darwin_arm64.tar.gz"
      sha256 "822b5a8b72b648e78630d4e86085afcf36f2b5cc41c344539cc17fd7853418ad"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.6.2/tmux-fastcopy_0.6.2_Darwin_x86_64.tar.gz"
      sha256 "0fa6c28fe886f7b6f7b848815789f76426a0708f9af8119aaa71559695f649f1"

      def install
        bin.install "tmux-fastcopy"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.6.2/tmux-fastcopy_0.6.2_Linux_x86_64.tar.gz"
      sha256 "23da1b0076eb2cddd77b17b5a9d71d47b71bffcde8dcb5701f5784f961fdda91"

      def install
        bin.install "tmux-fastcopy"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/tmux-fastcopy/releases/download/v0.6.2/tmux-fastcopy_0.6.2_Linux_arm64.tar.gz"
      sha256 "801503fde2bc2b0369c71fc1c7f431dc9853d79bb85e3d27db73ee6490882696"

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
