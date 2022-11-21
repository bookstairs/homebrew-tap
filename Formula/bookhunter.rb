# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bookhunter < Formula
  desc "Software to download chinese ebooks from Internet."
  homepage "https://github.com/bookstairs"
  version "0.9.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bookstairs/bookhunter/releases/download/v0.9.3/bookhunter_0.9.3_darwin_amd64.tar.gz"
      sha256 "52c37476bb06e445f46fd181a79b1471b6a8d939b67e25ded7bea3d6d808a38b"

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
      url "https://github.com/bookstairs/bookhunter/releases/download/v0.9.3/bookhunter_0.9.3_darwin_arm64.tar.gz"
      sha256 "f331d0fa7ed26d080b715cfb17b13f2b739e8e7a013609fb37a906aa4a77e96d"

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
      url "https://github.com/bookstairs/bookhunter/releases/download/v0.9.3/bookhunter_0.9.3_linux_amd64.tar.gz"
      sha256 "335e78f51ddfbb09da05a712ba98f4c0867462dbb9925ad5e8f1c0ffdd5b46d2"

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
      url "https://github.com/bookstairs/bookhunter/releases/download/v0.9.3/bookhunter_0.9.3_linux_arm64.tar.gz"
      sha256 "1b54757f63bea0f4f82bc23600032fa17ce765e55c97921c1b99f2fcba5ebd2d"

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
