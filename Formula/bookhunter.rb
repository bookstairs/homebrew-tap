# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Bookhunter < Formula
  desc "Software to download chinese ebooks from Internet."
  homepage "https://github.com/bibliolater"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.4.2/bookhunter_0.4.2_darwin_amd64.tar.gz"
      sha256 "e09e52f40951d075d49351dfa69a3e0563844d01a21b064109a5768d472bb438"

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
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.4.2/bookhunter_0.4.2_darwin_arm64.tar.gz"
      sha256 "02f45d12bbeb1ad8ca97160861e24f75bc1dd276e6a3037a064ff0ce54ada81e"

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
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.4.2/bookhunter_0.4.2_linux_amd64.tar.gz"
      sha256 "11e7de77c91315c7266a93e0a833925439f4f14cac6b21fe2f65146bd0787aff"

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
      url "https://github.com/bibliolater/bookhunter/releases/download/v0.4.2/bookhunter_0.4.2_linux_arm64.tar.gz"
      sha256 "cf7739f763c7ba8902871ef47c5d09686eb1cbff488dba1a73648cc5fcc575c4"

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
    system "#{bin}/bookhunter -v"
  end
end
