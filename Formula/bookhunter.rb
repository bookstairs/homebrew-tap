# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bookhunter < Formula
  desc "Software to download chinese ebooks from Internet."
  homepage "https://github.com/bibliolater"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.5.0/bookhunter_0.5.0_darwin_amd64.tar.gz"
      sha256 "a27372575349656cb08e4b439320560f6dd18069ba5c16e3e9410b3dce93b98e"

      def install
        bin.install "bookhunter"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "bash")
        (bash_completion/"bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "zsh")
        (zsh_completion/"_bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "fish")
        (fish_completion/"bookhunter.fish").write output
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.5.0/bookhunter_0.5.0_darwin_arm64.tar.gz"
      sha256 "fe9c64156cfaa5f049b414860a6a1d2cef43292f24d1ca3142893087b545c5fb"

      def install
        bin.install "bookhunter"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "bash")
        (bash_completion/"bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "zsh")
        (zsh_completion/"_bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "fish")
        (fish_completion/"bookhunter.fish").write output
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.5.0/bookhunter_0.5.0_linux_amd64.tar.gz"
      sha256 "ba424856393e0f4a2a675fa6dc1f0803506165ed398589544d23d6d32e6f3194"

      def install
        bin.install "bookhunter"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "bash")
        (bash_completion/"bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "zsh")
        (zsh_completion/"_bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "fish")
        (fish_completion/"bookhunter.fish").write output
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.5.0/bookhunter_0.5.0_linux_arm64.tar.gz"
      sha256 "9ae810db09e1f750766b328fa0b34a16690de4706b7a7e00a046164dd4ec428b"

      def install
        bin.install "bookhunter"

        # Install shell completions
        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "bash")
        (bash_completion/"bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "zsh")
        (zsh_completion/"_bookhunter").write output

        output = Utils.safe_popen_read("#{bin}/bookhunter", "completion", "fish")
        (fish_completion/"bookhunter.fish").write output
      end
    end
  end

  test do
    system "#{bin}/bookhunter version"
  end
end
