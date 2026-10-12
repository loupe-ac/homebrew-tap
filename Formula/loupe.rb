class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.16.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.16.0/loupe_1.16.0_darwin_arm64.tar.gz"
      sha256 "b70a6f0e972a98a07fae7c9bb5756c34e0450a2f93d0b659acebb3e88a80d4a5"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.16.0/loupe_1.16.0_darwin_amd64.tar.gz"
      sha256 "e0c3212a6e087f6669764cd0585fde298f823e2592cd4a6ee017c2f42baf450b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.16.0/loupe_1.16.0_linux_arm64.tar.gz"
      sha256 "4406fd39eb2537e75acf3811c8dfa0a7046212ae834099ddc066b6b295738ed5"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.16.0/loupe_1.16.0_linux_amd64.tar.gz"
      sha256 "76ee2eb75492426eb95dc111e033444bdc58258b6b611c6a5f3840be9d9e630e"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
