class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.6/gcp-nuke-v1.0.0-beta.6-darwin-amd64.tar.gz"
      sha256 "b3bf643bc2b003f49a07dd3db68468542e9067ef315c6216be9d495dc1db45b2"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.6/gcp-nuke-v1.0.0-beta.6-darwin-arm64.tar.gz"
      sha256 "a1a186032008db8001c2469f3396b62608c696b57a3d50af3201876882baf268"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.6/gcp-nuke-v1.0.0-beta.6-linux-amd64.tar.gz"
      sha256 "bdbfb876f9c81c25b13d19cffb9e3ec9b5ee49a065452b24c5a2496f73575196"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.6/gcp-nuke-v1.0.0-beta.6-linux-arm64.tar.gz"
      sha256 "940c529a968e84188f8f684bcea76c9871e0bd310679f8768af72843b0a6da2c"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
