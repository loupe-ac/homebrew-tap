class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.21.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.21.1/loupe_1.21.1_darwin_arm64.tar.gz"
      sha256 "df4a11d2d0c52dab545753f284418e2fc0365158b8ada47a6d1cc27509dbd79f"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.21.1/loupe_1.21.1_darwin_amd64.tar.gz"
      sha256 "0e35eff854de6afd55158471ee99942a11b8799b7e2b0b9d190d39289f3f3ed4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.21.1/loupe_1.21.1_linux_arm64.tar.gz"
      sha256 "885e8c1c1f3fd38bddc67bdb9f6503e0766aeb8d3a5ec660299bde8387ed0f9b"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.21.1/loupe_1.21.1_linux_amd64.tar.gz"
      sha256 "e69ade7ea2bfaf6e17b80c4b3fdc6861ff6a91efc6fb14540c82cef92ccce2c5"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
