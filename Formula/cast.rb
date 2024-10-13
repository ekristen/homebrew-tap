class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.50/cast-v0.14.50-darwin-amd64.tar.gz"
      sha256 "1e921b4a61120125e2545f8627a1e218e93b91f404bf2f06da0a895a8ec24560"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.14.50/cast-v0.14.50-darwin-arm64.tar.gz"
      sha256 "349b88fa9ea2580c294838cc0a978d4641440ffd04605065fcb3b76f27bfc0c3"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.14.50/cast-v0.14.50-linux-amd64.tar.gz"
      sha256 "a31fbb8199fcae0bc4ddc5eb57b57e30c72c74c0538e63bddea91c3ced66d35e"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.14.50/cast-v0.14.50-linux-arm64.tar.gz"
      sha256 "3b750604bc8ba19a2d05db95a070b48922ae3b8a835a715c995eb1a79786eb02"

      def install
        bin.install "cast"
      end
    end
  end
end
