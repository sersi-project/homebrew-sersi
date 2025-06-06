class Sersi < Formula
    desc "Scaffold full-stack apps with presets and hooks"
    homepage "https://github.com/sersi-project/sersi"
    url "https://github.com/sersi-project/sersi/releases/download/v1.0.2/sersi-darwin-amd64.tar.gz"
    sha256 "YOUR_SHA256_CHECKSUM"
    version "1.0.2"
  
    def install
      bin.install "sersi"
    end
  
    test do
      system "#{bin}/sersi", "--version"
    end
  end
  