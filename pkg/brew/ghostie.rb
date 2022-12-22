class Ghostie < Formula
  desc "Github notifications in your terminal"
  homepage "https://github.com/attriaayush/ghostie"
  version "v0.2.0"

  depends_on "sqlite"

  if OS.mac?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "6ceecbe3976fbd3601a742c0e60e282a03c6b68be6a4a01d947f49bbc2e18378"
  elsif OS.linux?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "49b0b3cdd20783350e077d44a74bc614f574fd32c6d3ddf47c579aa5dc758060"
  end

  def install
    bin.install "ghostie"
  end

  test do 
    system "#{bin}/ghostie"
  end
end
