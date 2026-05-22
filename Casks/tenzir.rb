cask "tenzir" do
  version "6.0.0-rc.6"
  sha256 "dccd7c713b5e70722e379825debeac33b5773afdce2832d6f8dd1249249096a6"

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
