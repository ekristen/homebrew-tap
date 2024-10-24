class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.5.4.tar.gz"
      sha256 "7290f1932b267dac6f834ee752b904b4336fef8ad67953db068a1bd0e114faeb"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.4/gcp-nuke-v1.5.4-darwin-arm64.tar.gz"
      sha256 "5f8c6d308ef58f276b1e19fe80b4b316183ff17be4401b0536ebe2fa5c353f87"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.4/gcp-nuke-v1.5.4-linux-amd64.tar.gz"
      sha256 "8ebb4ce9cd34d33e24095934248292aacf4223e6b8a96f4a4820b713627debd4"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.5.4/gcp-nuke-v1.5.4-linux-arm64.tar.gz"
      sha256 "b49b0618b36326cb6ebe90903baa43d4c3e37f218984a138f8346037360d2860"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
