# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitprompt < Formula
  desc "Informative git prompt for zsh and bash"
  homepage "https://github.com/abhinav/gitprompt"
  version "0.8.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.2/gitprompt_0.8.2_Darwin_arm64.tar.gz"
      sha256 "f65793cf343a65a5193e81bfd9647e207b4eb5b7b9d990af9d26af3a73f65e73"

      def install
        bin.install "gitprompt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.2/gitprompt_0.8.2_Darwin_x86_64.tar.gz"
      sha256 "2fca1cef1da4b3794416f3e1a95ed1c1e6c06c9f02b40c1483c5d279499f5719"

      def install
        bin.install "gitprompt"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.2/gitprompt_0.8.2_Linux_armv6.tar.gz"
      sha256 "23e6ca7abf5c9726d2b2a1c0bdf84bbb075f9e4c2640511c472cadda72af9035"

      def install
        bin.install "gitprompt"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.2/gitprompt_0.8.2_Linux_arm64.tar.gz"
      sha256 "b21c8f3a81b3782400cf5b83b02f864fd13eb7d11e19a2b5cc6dd8779db54607"

      def install
        bin.install "gitprompt"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.2/gitprompt_0.8.2_Linux_x86_64.tar.gz"
      sha256 "a70aa0ebbed2bb3d34dd6ef0a0a0ee0434efe04e7e9450ae3d7a052c98856a19"

      def install
        bin.install "gitprompt"
      end
    end
  end

  depends_on "git"
end
