cask "markdown-tools" do
  arch arm: "arm64", intel: "x86_64"
  version "0.4.1"
  sha256 "92a31e8961290fb44de2ba59f8c0b38cc2895673a0217f7cfb9e2f1c3e90566d"

  url "https://github.com/lubieniebieski/markdown-tools/releases/download/v#{version}/markdown-tools_v#{version}_macOS_#{arch}.tar.gz"
  name "markdown-tools"
  desc "Collection of tools for working with markdown files"
  homepage "https://github.com/lubieniebieski/markdown-tools"

  binary "markdown-tools"
end
