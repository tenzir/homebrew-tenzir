cask "tenzir" do
  version "6.14.0"
  sha256 "f30317b3db35256d93cda0be159d9faf82508410e30a288a5b8ff6b657dfe151"

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

  uninstall pkgutil: "com.tenzir.tenzir.runtime"
end
