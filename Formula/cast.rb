class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.10/cast-v0.16.10-darwin-amd64.tar.gz"
      sha256 "438a4ed4e04dc287b06f5bc509ae33d7973dc16417d9015509df7029d8e6b83a"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.10/cast-v0.16.10-darwin-arm64.tar.gz"
      sha256 "51872ace3247deafd23201784ffb6dfcd4ab5c65607b5f1458c52bbb89210963"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.10/cast-v0.16.10-linux-amd64.tar.gz"
      sha256 "a046840ccdd4dd3c51a1617e74ce6ee28b33af156017465746ea0a044be39dc1"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.10/cast-v0.16.10-linux-arm64.tar.gz"
      sha256 "40386ee166d1871827968bdfb7759e831b9ce216b4e990ffb2e4a80d3fa9ce3a"

      def install
        bin.install "cast"
      end
    end
  end
end
