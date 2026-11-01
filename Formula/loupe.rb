class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.31.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.31.0/loupe_1.31.0_darwin_arm64.tar.gz"
      sha256 "d5a1155e63ab494136fb537fbee3bdd4aad8f68a7520c1fb5904583384f1cb41"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.31.0/loupe_1.31.0_darwin_amd64.tar.gz"
      sha256 "b5b3dc662c2222629cba65f3fb5e8f0d7accc5712dceb853fd8d4925c7d25cee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.31.0/loupe_1.31.0_linux_arm64.tar.gz"
      sha256 "f5205f590acceacc0bbcd4972c722ba7def0b56629f2ef7b03d9538a0b044439"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.31.0/loupe_1.31.0_linux_amd64.tar.gz"
      sha256 "000c6ebd1f81b5284d46e4fc9d7034f6f5af767876ae135d808f760c0c2dbc5f"
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
