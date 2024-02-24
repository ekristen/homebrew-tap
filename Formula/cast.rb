class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.19/cast-v0.14.19-darwin-amd64.tar.gz"
      sha256 "960c88ad07961133e05821996a2a002959142146f8766662f4404757ba962a78"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.19/cast-v0.14.19-darwin-arm64.tar.gz"
      sha256 "5bee1ac154037c8dc763e317c169196a737b27e5cc1c8f64105836f26deb39b9"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.19/cast-v0.14.19-linux-amd64.tar.gz"
      sha256 "38562612ad581508e47b5efaf71e29f06178ce578ab384c63b4a084e8348bc16"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.19/cast-v0.14.19-linux-arm64.tar.gz"
      sha256 "b868499f38c4ec3ae4d2a5d422e17e8abbbb3942f78176f6f410df31ed4e38ef"

      def install
        bin.install "cast"
      end
    end
  end
end
