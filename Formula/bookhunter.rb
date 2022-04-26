# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bookhunter < Formula
  desc "Software to download chinese ebooks from Internet."
  homepage "https://github.com/bibliolater"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.6.0/bookhunter_0.6.0_darwin_amd64.tar.gz"
      sha256 "7502aaee0e97b58dc585e58d42fab1474b8e899c19278aea35dfe5742fa3bb90"

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
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.6.0/bookhunter_0.6.0_darwin_arm64.tar.gz"
      sha256 "1bbfeda046f411ce53cec86d79953b3e1f662260a3a3236d479a500dcec8a81d"

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
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.6.0/bookhunter_0.6.0_linux_arm64.tar.gz"
      sha256 "a901c1c04f27fd047e1ebb5eb583b6950f3769fd9b174530ae3bd755839340fd"

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
    if Hardware::CPU.intel?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.6.0/bookhunter_0.6.0_linux_amd64.tar.gz"
      sha256 "f746859c8e4b3f254464a35d28293315e647ac96923f8d4674c4f6a71a28a44e"

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
