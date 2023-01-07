class Ghostie < Formula
  desc "Github notifications in your terminal"
  homepage "https://github.com/attriaayush/ghostie"
  version "v0.3.0"

  depends_on "sqlite"

  if OS.mac?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "c20c454a778ba76b27460216df5cf451128223cb5ecf4a4a1d0625bf730881c7"
  elsif OS.linux?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "db071cc275adfeb2384dec3da6190c399bca8974add9b99c7196dd6f2ae37fcc"
  end

  def install
    bin.install "ghostie"
  end

  test do 
    system "#{bin}/ghostie"
  end
end
