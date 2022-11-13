class Ghostie < Formula
  desc "Github notifications in your terminal"
  homepage "https://github.com/attriaayush/ghostie"
  version "v0.1.0"

  depends_on "sqlite"

  if OS.mac?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-apple-darwin.tar.gz"
    sha256 "eb1fcc3eafb4588dc0c62fda6134b808bccca57e428dd6d1194ddfce05a6e5d7"
  elsif OS.linux?
    url "https://github.com/attriaayush/ghostie/releases/download/#{version}/ghostie-#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "d2bfea37c323d492406f749a7a3f7f803fa05a4ed603caab79bab3f97855a667"
  end

  def install
    bin.install "ghostie"
  end

  test do 
    system "#{bin}/ghostie"
  end
end
