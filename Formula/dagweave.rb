# Written by scripts/homebrew-formula.sh in dagweave/local on every release, so edit that instead.
class Dagweave < Formula
  desc "Run Argo Workflows locally"
  homepage "https://dagweave.com/local/"
  version "0.1.0-rc.5"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.5/dagweave-darwin-arm64"
      sha256 "a0e716c218925bf6af90eb99709b70b9ab3999a3819c08c52f539a0014f2d7b9"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.5/dagweave-darwin-amd64"
      sha256 "4ff922202424ef65cabf1358b9f43800c57b5feb9be725b4846a436432ac4593"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.5/dagweave-linux-arm64"
      sha256 "0002be24c6f8bbde225b669696b60f6b64414b9761fba45dc1bdddb69ee3901e"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.5/dagweave-linux-amd64"
      sha256 "e6ff7119456356e79981f7a3b7782a36e40d25d644b3d0092612a1fdf8ec4c77"
    end
  end

  def install
    bin.install Dir["dagweave-*"].fetch(0) => "dagweave"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dagweave version")
  end
end
