class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.26.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.26.0/loupe_1.26.0_darwin_arm64.tar.gz"
      sha256 "0e94683ed0ebc6316643ded59f67c2a0f120e9ded7a34ab1e6687d438e29f9d6"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.26.0/loupe_1.26.0_darwin_amd64.tar.gz"
      sha256 "cb957cb2f7efcf8cebdc4c7eb73bb3fd41a61d459f34149d368a4aa6e5ec7491"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.26.0/loupe_1.26.0_linux_arm64.tar.gz"
      sha256 "f72e28c8e0e279d9f375d3d39f5989779a775fc0a3e05fe09e40f98b08e7c013"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.26.0/loupe_1.26.0_linux_amd64.tar.gz"
      sha256 "2aeda486027225d11fea6a96ebe28e800a6f20b8d7fd5752b68f572177b519df"
    end
  end

  def install
    bin.install "loupe"
    libexec.install "Live review.app" if OS.mac?
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/loupe version")
    assert_path_exists libexec/"Live review.app" if OS.mac?
  end
end
