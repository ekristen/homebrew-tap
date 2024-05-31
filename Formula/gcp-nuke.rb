class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.14/gcp-nuke-v1.0.0-beta.14-darwin-amd64.tar.gz"
      sha256 "00ef01012c7a5793623fc61f54c0570f4c0236c43115e2abd228f2c612971d22"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.14/gcp-nuke-v1.0.0-beta.14-darwin-arm64.tar.gz"
      sha256 "6d3a17dde849da91cfa4ad10371490479ef67f9ece095c0a9e0d2f2fdf64697e"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.14/gcp-nuke-v1.0.0-beta.14-linux-amd64.tar.gz"
      sha256 "2cd22d6c15b4e277f7620a7457ff1d0a1b7915be4a53dd37f9a6eaa4d9a30c46"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.14/gcp-nuke-v1.0.0-beta.14-linux-arm64.tar.gz"
      sha256 "44b9e4e2592cccf5e8fa966bbb769aaaad587876f894fa9820e1f560827956d9"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
