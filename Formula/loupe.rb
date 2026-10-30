class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.29.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.29.0/loupe_1.29.0_darwin_arm64.tar.gz"
      sha256 "ad1dbb22338e62c41df6be918deaa50b5ab4777d808640421e8d2d3e53383485"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.29.0/loupe_1.29.0_darwin_amd64.tar.gz"
      sha256 "e030077b8780a5b3c36b73e5efe98aa066203fc4b33cf59ea52860bdb63dea4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.29.0/loupe_1.29.0_linux_arm64.tar.gz"
      sha256 "6ed9ae04177bc307f9931aea84449ae3479e16859980c3e0153b94548cbe6bee"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.29.0/loupe_1.29.0_linux_amd64.tar.gz"
      sha256 "5288c042a8fe005f0d4034c822023154cbfe370c10b013721993f2353d6d23b4"
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
