class Ghostie < Formula
  desc "Github notifications in your terminal"
  homepage "https://github.com/attriaayush/ghostie"
  version "v0.2.1"

  depends_on "sqlite"

  if OS.mac?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "09b977764f9ce68d1415103da7bb38b80e1c7cc640df7ac0a88ea941dfbaa764"
  elsif OS.linux?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "bb003d8054329818199c290df190dbade7b94e7d62fff126555cd21ec1a2984e"
  end

  def install
    bin.install "ghostie"
  end

  test do 
    system "#{bin}/ghostie"
  end
end
