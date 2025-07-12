class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/archive/refs/tags/v1.7.24.tar.gz"
      sha256 "cf58c411bb92e193c9a787b1f9143aa6d7574089efeaf9fac6ff580fca295ff6"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.24/gcp-nuke-v1.7.24-darwin-arm64.tar.gz"
      sha256 "ca1ae0344248eefa1d6c53f7407445a1d2f9499283d74400ce2e1e4111ee0cee"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.24/gcp-nuke-v1.7.24-linux-amd64.tar.gz"
      sha256 "97c319cc45fe43b11f0a9e9978bbbcf4e8018e3df076024589e87c8d8d39ec1b"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.7.24/gcp-nuke-v1.7.24-linux-arm64.tar.gz"
      sha256 "b31ae2b54b62d0171b571285d7fd43fad600f284ff7943ac7cef097a84938973"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
