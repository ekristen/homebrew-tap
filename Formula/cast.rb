class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.25/cast-v0.14.25-darwin-amd64.tar.gz"
      sha256 "0e0f167ee3293c329a40b50c5372ee582404c928d3bc1f0d1f8baf29655b3d90"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.25/cast-v0.14.25-darwin-arm64.tar.gz"
      sha256 "b25d753d2e694fdd1414c470d7f106d96f7a3835090baf1b5f190b41b482fc6b"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.25/cast-v0.14.25-linux-amd64.tar.gz"
      sha256 "01d3b74e3da7a26f0e01a0936733c46f01bf35393a3880b798373a30ef98a45c"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.25/cast-v0.14.25-linux-arm64.tar.gz"
      sha256 "fa1fc59aec2cfc0ee371a286ecc48b5317d4f56873038378888a67d2b193ccb5"

      def install
        bin.install "cast"
      end
    end
  end
end
