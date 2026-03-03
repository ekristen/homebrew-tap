class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.42/cast-v0.16.42-darwin-amd64.tar.gz"
      sha256 "7372b0630736fdc90acc39f01f6d1fb89cb718cae3ec9f61c6d67f26b70be2d4"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.42/cast-v0.16.42-darwin-arm64.tar.gz"
      sha256 "b2c727eea8b0ef50ddf63f4e629c496e953a27f4753879bf94369485fc24743d"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.42/cast-v0.16.42-linux-amd64.tar.gz"
      sha256 "4f2ecca900c1be09572882880b1a531ff8bf5548b9a08d67e35d881b48e75506"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.42/cast-v0.16.42-linux-arm64.tar.gz"
      sha256 "54eae873e242d032ea55e26397f28ec90d4fbc751a75e3c4c384a54e93837209"

      def install
        bin.install "cast"
      end
    end
  end
end
