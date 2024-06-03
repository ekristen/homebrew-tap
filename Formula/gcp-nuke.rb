class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.15/gcp-nuke-v1.0.0-beta.15-darwin-amd64.tar.gz"
      sha256 "5bb428d2d48e888acf70eb8b4cb6cd8affdd9846190f9dfc46016a3bf9b8ee04"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.15/gcp-nuke-v1.0.0-beta.15-darwin-arm64.tar.gz"
      sha256 "129da2e18b937a7aeae1cc81a240f203a44f41daa815d1541cfe118715a14f47"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.15/gcp-nuke-v1.0.0-beta.15-linux-amd64.tar.gz"
      sha256 "6c8a89c4ed5ffe216cebd694e0334fbe2bc4a72bb251cf8f307adf724959e005"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.15/gcp-nuke-v1.0.0-beta.15-linux-arm64.tar.gz"
      sha256 "58da4a23a42e4d77cddc54b6f186e079582d6b96f29dd9c47446815495a1c715"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
