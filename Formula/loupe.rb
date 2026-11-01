class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.32.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.32.0/loupe_1.32.0_darwin_arm64.tar.gz"
      sha256 "960584b787eed89db1b9a77e6e81554d8dfcf342c57df0635fb20af2d3f9f894"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.32.0/loupe_1.32.0_darwin_amd64.tar.gz"
      sha256 "56d238865fadaba006a225c28df1a3a53f0c0cebc3c81e56a408b5ef243fa9c8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.32.0/loupe_1.32.0_linux_arm64.tar.gz"
      sha256 "9f9eee71345f083ed6fdec8d17c996156750f984143991817ecccaadc957536f"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.32.0/loupe_1.32.0_linux_amd64.tar.gz"
      sha256 "710ada797ec8e3b70a077c20ec2e9bd825151620a0eb842653eebf122f5b3c05"
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
