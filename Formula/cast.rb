class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.5/cast-v0.15.5-darwin-amd64.tar.gz"
      sha256 "3f501a433663065ded208babef856f0fea1955413289577e1b7368676518549b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.15.5/cast-v0.15.5-darwin-arm64.tar.gz"
      sha256 "6150ee9bb367fba29c95c4eb9d2858ff90cb59900be4a78ea9b314dccf17faf5"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.5/cast-v0.15.5-linux-amd64.tar.gz"
      sha256 "a63ca659008b6d81ae5563ddc680f56f747da1ae4afbee3f73a6b062f3738a49"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.15.5/cast-v0.15.5-linux-arm64.tar.gz"
      sha256 "019d390649e98d8901b39db324df9a3ff71bae4d2007f8f5681f215cf5c69a12"

      def install
        bin.install "cast"
      end
    end
  end
end
