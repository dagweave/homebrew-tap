# Written by scripts/homebrew-formula.sh in dagweave/local on every release, so edit that instead.
class Dagweave < Formula
  desc "Run Argo Workflows locally"
  homepage "https://dagweave.com/local/"
  version "0.1.0-rc.4"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.4/dagweave-darwin-arm64"
      sha256 "2510f4627439c64f2136d213cf6979184afdfd197d6e789d1a489ce64f6d6c7a"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.4/dagweave-darwin-amd64"
      sha256 "c95ca4d8f7fe49ace877af616401d4838ff703630321b654fe28b7c60b341c6f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.4/dagweave-linux-arm64"
      sha256 "c61b28ce84e1fa0b5ea40599f391bda80493348d4fc02de1c60cb5085d9602e9"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.4/dagweave-linux-amd64"
      sha256 "735af04ad60c712ae3cf3bd6b44989f277687cd60ce3d50db077b643e28a7311"
    end
  end

  def install
    bin.install Dir["dagweave-*"].fetch(0) => "dagweave"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dagweave version")
  end
end
