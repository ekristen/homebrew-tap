class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.10/gcp-nuke-v1.0.0-beta.10-darwin-amd64.tar.gz"
      sha256 "b94b5e6fc4b322cb45e3393dccd4d466dfdb7893cdfc1f0d746ec53d1ecba3e9"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.10/gcp-nuke-v1.0.0-beta.10-darwin-arm64.tar.gz"
      sha256 "62150a6dacba73ef1e68773e3f7ccd12751f868e9aee8495da6585a2699f7788"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.10/gcp-nuke-v1.0.0-beta.10-linux-amd64.tar.gz"
      sha256 "59ea3b46c7be7174f3a076a2da1cfabd252758514913f475721bc40abe768242"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.10/gcp-nuke-v1.0.0-beta.10-linux-arm64.tar.gz"
      sha256 "c423243c0912230fd8fc2ac4cfa3867c476c1ca1b22710351d9fa5f8e78a2518"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
