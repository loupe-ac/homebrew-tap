class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/ubermuda/loupe"
  version "1.17.1"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.1/loupe_1.17.1_darwin_arm64.tar.gz"
      sha256 "048e448b5aa341a8cc1346e63fadb0964a8d4705e4cec861d724b6257da4ea25"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.1/loupe_1.17.1_darwin_amd64.tar.gz"
      sha256 "b33f33937a141b9ab9af62435bca5ccf5502a38f3faea94e109727de4f14519f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.1/loupe_1.17.1_linux_arm64.tar.gz"
      sha256 "81aa542cabdd100d8b076502817f7fdaca15e7cc7baffc3449ebc7e8866b25c9"
    end
    on_intel do
      url "https://github.com/ubermuda/loupe/releases/download/cli/v1.17.1/loupe_1.17.1_linux_amd64.tar.gz"
      sha256 "b65c790e3809490fc660cc726f65eeba056e124f5f6e2b508af8fe6d5ee00c02"
    end
  end

  def install
    bin.install "loupe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
  end
end
