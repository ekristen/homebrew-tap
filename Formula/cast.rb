class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.30/cast-v0.14.30-darwin-amd64.tar.gz"
      sha256 "d4bc5eef5ade2bd0c597d8e5b0a758cab98bd3d850ecc25656ba18f972553f5b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.30/cast-v0.14.30-darwin-arm64.tar.gz"
      sha256 "98caf02e33f866e195b6dd6e6ccd7afe5c2b46fb20d160e1a6cc48fdb793c96b"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.30/cast-v0.14.30-linux-amd64.tar.gz"
      sha256 "b50a2acf9712d878cb0ba78d94d2e24102c6a5e20630e1946492453ecd751725"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.30/cast-v0.14.30-linux-arm64.tar.gz"
      sha256 "75626452b9c074b859dc6d095c62ad26428cd460318dc2c8873583744435e647"

      def install
        bin.install "cast"
      end
    end
  end
end
