class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.12/cast-v0.16.12-darwin-amd64.tar.gz"
      sha256 "cca4818e5a1ba06de1c1e2bf1187e98da0a075ea9fdb97aef349812f4df88e6b"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.12/cast-v0.16.12-darwin-arm64.tar.gz"
      sha256 "d413351854e11df436bc7a07a2877d2d38899d55c82718726b677f30caabcccd"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.12/cast-v0.16.12-linux-amd64.tar.gz"
      sha256 "70717093adc0b5d555e273924061f7cf481db706be4c5cd9fea602a31f3e93c7"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.12/cast-v0.16.12-linux-arm64.tar.gz"
      sha256 "48b29f81f40a44b8fee22361bfbff01f80765d30439f1d8edae66b2e47402566"

      def install
        bin.install "cast"
      end
    end
  end
end
