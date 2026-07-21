cask "tenzir" do
  version "6.8.0"
  sha256 "a3397f943a83eee46c657c3eee0df1f91b2de9bd1dab76731fa17484f35a4acc"

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
