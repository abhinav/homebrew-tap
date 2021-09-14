# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gitprompt < Formula
  desc " Informative git prompt for zsh and bash"
  homepage "https://github.com/abhinav/gitprompt"
  version "0.8.0"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.0/gitprompt_0.8.0_Darwin_x86_64.tar.gz"
      sha256 "d626ae58ee86be256ed270e9a3e59dd0c37fdce7bf9386e1f563bf042d8560eb"
    end
    if Hardware::CPU.arm?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.0/gitprompt_0.8.0_Darwin_arm64.tar.gz"
      sha256 "8e071d777e4ad3a88c1998380969feda3982595ff18044deb1b0cea59359cfad"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.0/gitprompt_0.8.0_Linux_x86_64.tar.gz"
      sha256 "d91c64c9884a2cc7e5ecf5f6dfc2fd00c761134d157eb8dfd059e8d5173fc6a5"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/abhinav/gitprompt/releases/download/v0.8.0/gitprompt_0.8.0_Linux_arm64.tar.gz"
      sha256 "140c3778dd2a1a0bd2e8b64dad597cb6b95517387be37675e317b06e13659dcd"
    end
  end

  depends_on "git"

  def install
    bin.install "gitprompt"
  end
end
