class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.23.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.23.0/loupe_1.23.0_darwin_arm64.tar.gz"
      sha256 "50b2a40cba375eec0562d762afa116fc1be624e3c4480c28b8db1eda02a1fe25"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.23.0/loupe_1.23.0_darwin_amd64.tar.gz"
      sha256 "10bb66d2d00b57049d1ad086e8e3b972492efab7f0fb5d575dffea70524d098c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.23.0/loupe_1.23.0_linux_arm64.tar.gz"
      sha256 "44c679295d3be6af3b8adbf8159e0bc51d624b28d6e194f79d033f4ee43245e8"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.23.0/loupe_1.23.0_linux_amd64.tar.gz"
      sha256 "494faa748f6eaeaa913f046ca5a769894e7b1f4f4eefcee06ce6d4f3fd7e6387"
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
