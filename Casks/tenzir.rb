cask "tenzir" do
  version "5.28.0"
  sha256 "54c1c6989c1a8fd68de74a3c8fcd9eb27e2d2bb6090b35961844ebd9eac0a0ff"

  url "https://github.com/tenzir/tenzir/releases/download/v5.28.0/tenzir-5.28.0-arm64-darwin-static.pkg",
      verified: "github.com/tenzir/tenzir/"
  name "Tenzir"
  desc "Security telemetry pipelines for security teams"
  homepage "https://github.com/tenzir/tenzir"

  depends_on arch: :arm64

  pkg "tenzir-5.28.0-arm64-darwin-static.pkg"

  # Keep the currently shipped pkgutil identifier until the companion
  # tenzir/tenzir PR switches the package metadata and release automation.
  uninstall pkgutil: "com.Tenzir.Tenzir.Runtime"
end
