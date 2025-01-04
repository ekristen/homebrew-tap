class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.7/cast-v0.15.7-darwin-amd64.tar.gz"
      sha256 "e61dc9108b9543aecb066633e8782d745efb751eb6951fd65380b3efa74a7a72"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.15.7/cast-v0.15.7-darwin-arm64.tar.gz"
      sha256 "216a03766127122c001d5abdd1621a7108c0d22bae1a6c3383bc6312cbdd1675"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.15.7/cast-v0.15.7-linux-amd64.tar.gz"
      sha256 "32b381a6518e78d0fed852308c1a0bc36634cfd59e84e876040532ca6b3b0c05"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.15.7/cast-v0.15.7-linux-arm64.tar.gz"
      sha256 "b8ce30f77f29aa831689ec0170b827eb54242d0d5147dc4b01b219d68e0d8658"

      def install
        bin.install "cast"
      end
    end
  end
end
