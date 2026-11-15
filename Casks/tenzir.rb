cask "tenzir" do
  version "6.22.0"
  sha256 "8c9b533f90037864a010e5440e0601c9cb07a71df07966ca87576a74defc97ea"

  arch arm: "arm64"

  url "https://github.com/tenzir/tenzir/releases/download/v#{version}/tenzir-#{version}-#{arch}-darwin-static.pkg"
  name "Tenzir"
  desc "Data pipelines for security teams"
  homepage "https://github.com/tenzir/tenzir"

  livecheck do
    skip "Managed by tenzir/tenzir release automation."
  end

  depends_on arch: :arm64

  pkg "tenzir-#{version}-#{arch}-darwin-static.pkg"
  binary "/opt/tenzir/bin/tenzir"

  uninstall pkgutil: "com.tenzir.tenzir.runtime"
end
