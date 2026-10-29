class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.24.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.24.0/loupe_1.24.0_darwin_arm64.tar.gz"
      sha256 "1c75a437fe677db0c89a70f7a295f26d86161f36c5a67905c71bb1311554bf01"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.24.0/loupe_1.24.0_darwin_amd64.tar.gz"
      sha256 "3c73c58e0f821650524144ea15a294db8c5a3bcef6bf860d7bad7bfe6894dbab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.24.0/loupe_1.24.0_linux_arm64.tar.gz"
      sha256 "ff102002c4de45d69a8f34cff2ce51541f3c24110420e63a6864d5c995920952"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.24.0/loupe_1.24.0_linux_amd64.tar.gz"
      sha256 "c4598bef261fe7db4a14ba2c93ed51fa9e8d69153c1627b04b752a3ccf8a36a1"
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
