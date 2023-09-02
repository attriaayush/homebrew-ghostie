class Ghostie < Formula
  desc "Github notifications in your terminal"
  homepage "https://github.com/attriaayush/ghostie"
  version "v0.3.1"

  depends_on "sqlite"

  if OS.mac?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "e642ea1f16ca396998b2b2fa5428538af7b8c7b2481a991c8d5e22ea4a6ed9cd"
  elsif OS.linux?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bfe5fe19ed69675083a9c995218c7c304f44893408344d53b869ed73daedd29a"
  end

  def install
    bin.install "ghostie"
  end

  test do 
    system "#{bin}/ghostie"
  end
end
