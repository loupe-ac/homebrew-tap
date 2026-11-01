class Loupe < Formula
  desc "Close the loop between Loupe and a local coding agent"
  homepage "https://github.com/loupe-ac/loupe"
  version "1.33.0"
  license "AGPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.33.0/loupe_1.33.0_darwin_arm64.tar.gz"
      sha256 "8e4d33b77046b16875c64cf135b9aa2dea3e5d77625cf9e7e805ef19919b96d5"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.33.0/loupe_1.33.0_darwin_amd64.tar.gz"
      sha256 "dce945ed17fc32c2fad21b3c12917af94b86f7d0edd86f28ca854971bfdbe099"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.33.0/loupe_1.33.0_linux_arm64.tar.gz"
      sha256 "b8b7f3106a846684026a84cc812066be3b8883a1cda4aaff6b9709e4d3c67500"
    end
    on_intel do
      url "https://github.com/loupe-ac/loupe/releases/download/cli/v1.33.0/loupe_1.33.0_linux_amd64.tar.gz"
      sha256 "a84c441577a2807dce18e9755240954cd8441248778147253a97e8a77d072b53"
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
