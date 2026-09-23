# Written by scripts/homebrew-formula.sh in dagweave/local on every release, so edit that instead.
class Dagweave < Formula
  desc "Run Argo Workflows locally"
  homepage "https://dagweave.com/local/"
  version "0.1.0-rc.3"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.3/dagweave-darwin-arm64"
      sha256 "39aa23768ea771053ca5d258b5e09c232362b30f7b1fd420b0ee1c86fec50442"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.3/dagweave-darwin-amd64"
      sha256 "8e3b4a63e4d461ad9c6b3f59539a5f6a3fea59d36c5e16b9ec4460305659e1ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.3/dagweave-linux-arm64"
      sha256 "12dd9700fa36392d44fe4b628535b1abc502ac5f9e114151d1658669c5bcada5"
    end
    on_intel do
      url "https://github.com/dagweave/local-releases/releases/download/v0.1.0-rc.3/dagweave-linux-amd64"
      sha256 "d0ddcfd531d427553bb3bba4366335a0ba96f3714a1b7b93cb924ce94d0161a6"
    end
  end

  def install
    bin.install Dir["dagweave-*"].fetch(0) => "dagweave"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dagweave version")
  end
end
