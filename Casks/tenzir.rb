cask "tenzir" do
  version "5.32.0"
  sha256 "bc7237fa76340850c652566943042971118ae25d4f925c404407decf221417b0"

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
