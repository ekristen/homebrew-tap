class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.9/cast-v0.16.9-darwin-amd64.tar.gz"
      sha256 "e52464146e001851e974b0891fd2af2be46baecddf1d5f2aa9d3d8594a12bddb"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.9/cast-v0.16.9-darwin-arm64.tar.gz"
      sha256 "306d8315c2f391ba7982b81c050704e6a4d627ad3ecfd78cb00be495f1dd4a25"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.9/cast-v0.16.9-linux-amd64.tar.gz"
      sha256 "4cd8d9f72e94d6b92bdfbcad0266e19511b909ac5ad4345b389bf9faa93ee78e"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.9/cast-v0.16.9-linux-arm64.tar.gz"
      sha256 "bd0fcc148d5374c4b5fc37fdb9ca1d12329764654ec7c619c9c25ec3266d12ca"

      def install
        bin.install "cast"
      end
    end
  end
end
