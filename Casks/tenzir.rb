cask "tenzir" do
  arch arm: "arm64"

  version "6.23.0"
  sha256 "91de238b46c4b3902b9617e505b84fbb07a5fbaa7a90d60cb328b2909ec825a9"

  url "https://github.com/tenzir/tenzir/releases/download/v#{version}/tenzir-#{version}-#{arch}-darwin-static.pkg"
  name "Tenzir"
  desc "Data pipelines for security teams"
  homepage "https://github.com/tenzir/tenzir"

  livecheck do
    skip "Managed by tenzir/tenzir release automation."
  end

  depends_on arch: :arm64
  depends_on :macos

  pkg "tenzir-#{version}-#{arch}-darwin-static.pkg"
  binary "/opt/tenzir/bin/tenzir"

  uninstall pkgutil: "com.tenzir.tenzir.runtime"
end
