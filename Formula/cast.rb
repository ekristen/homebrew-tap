class Cast < Formula
  desc "CLI tool to install cast compatible linux distributations"
  homepage "https://github.com/ekristen/cast"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.30/cast-v0.16.30-darwin-amd64.tar.gz"
      sha256 "d3a9c8cd516e1d1fa97c20be5555fbe67c17e2e7c69f6d034aee56d4f9038945"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/cast/releases/download/v0.16.30/cast-v0.16.30-darwin-arm64.tar.gz"
      sha256 "f03a54e880858fb0683e0e4688bf22ed13e524f1d0ee8da99d4ee6139ef7e8c6"

      def install
        bin.install "cast"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/cast/releases/download/v0.16.30/cast-v0.16.30-linux-amd64.tar.gz"
      sha256 "68cbe42011a254493ccb6ec6720c532592e3deeb7f4e1193165748515d730888"

      def install
        bin.install "cast"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/cast/releases/download/v0.16.30/cast-v0.16.30-linux-arm64.tar.gz"
      sha256 "12fc0698462bb319b3ea76238e145183bd103c48b5b3713e192d626de7b6490b"

      def install
        bin.install "cast"
      end
    end
  end
end
