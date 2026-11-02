class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.34.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.0/loupe_1.34.0_darwin_arm64.tar.gz"
      sha256 "326d22b6545e4613839b31b96a8bd8623e6c6590b8b5e973d1203250c3a75cbc"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.0/loupe_1.34.0_darwin_amd64.tar.gz"
      sha256 "ecdaece9b502939aaff67b1549d6590822d516ae0c34bee403f490e382e4963c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.0/loupe_1.34.0_linux_arm64.tar.gz"
      sha256 "e913cacb8b3ea824951b8585505be19eb9f9550d26f4418ded276c92fa2b1d03"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.34.0/loupe_1.34.0_linux_amd64.tar.gz"
      sha256 "9e620d87ea44ebabb3d4fee2299aee313d0ed91804e882cb3108ea294650c530"
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
