# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Restack < Formula
  desc "Makes interactive Git rebase nicer."
  homepage "https://github.com/abhinav/restack"
  version "0.5.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.5.1/restack_0.5.1_Darwin_x86_64.tar.gz"
      sha256 "b69e42c824970a4b1d5120763bd0ce322bd0817af2336b10199884da5863928c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/restack/releases/download/v0.5.1/restack_0.5.1_Darwin_arm64.tar.gz"
      sha256 "be1ae57497f4181afc0c44a661d508b6ed3d8942f93400d3c3e1a1a2bf0edd00"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/restack/releases/download/v0.5.1/restack_0.5.1_Linux_x86_64.tar.gz"
      sha256 "26588a1d9b2e2c5611af89ac0864f31d8a159aa31698e4a582e4a27809e1c427"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/restack/releases/download/v0.5.1/restack_0.5.1_Linux_arm64.tar.gz"
      sha256 "6089698fd68ff03d192514d55ad004be93650f0484771bd52ffd6c5cb144a2a9"
    end
  end

  depends_on "git"

  def install
    bin.install "restack"
  end

  test do
    system "#{bin}/restack -version"
  end
end
