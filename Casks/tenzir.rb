cask "tenzir" do
  version "6.15.0"
  sha256 "2f74a1a786bf369cb07bde6d3128cc7cbe099bae43de39c0bc6fa19f6c30409c"

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
