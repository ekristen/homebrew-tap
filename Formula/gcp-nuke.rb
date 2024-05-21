class GcpNuke < Formula
  desc "Remove all the resources from a GCP project"
  homepage "https://ekristen.github.io/gcp-nuke/"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.4/gcp-nuke-v1.0.0-beta.4-darwin-amd64.tar.gz"
      sha256 "f71bdd65f47331040aade880a61f3b08d8782d80e5738059032e7bec3d191d99"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.4/gcp-nuke-v1.0.0-beta.4-darwin-arm64.tar.gz"
      sha256 "5f79d3bc0179a28dab76d1ea41b27fa0c7f7759d1a3396e177672028e095837d"

      def install
        bin.install "gcp-nuke"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.4/gcp-nuke-v1.0.0-beta.4-linux-amd64.tar.gz"
      sha256 "50e4ae4a33448f5e70a4401e1eef44cefb369543627832e38bcdbc9871b93a8e"

      def install
        bin.install "gcp-nuke"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/ekristen/gcp-nuke/releases/download/v1.0.0-beta.4/gcp-nuke-v1.0.0-beta.4-linux-arm64.tar.gz"
      sha256 "ef715c80bae9a877b091ff57b305bc38df373297ab56e034d7e8ded275d2cbbe"

      def install
        bin.install "gcp-nuke"
      end
    end
  end
end
