class Sersi < Formula
    desc "Scaffold full-stack apps with presets and hooks"
    homepage "https://github.com/sersi-project/sersi"
    version "1.1.2"

    if Hardware::CPU.intel?
      url "https://github.com/sersi-project/sersi/releases/download/v1.1.2/sersi-darwin-amd64.tar.gz"
      sha256 "9457c1a9c6061a7f23720f5746c1eb0c9753c8dda737bcc4f63dee2b75e40404"
    elsif Hardware::CPU.arm?
      url "https://github.com/sersi-project/sersi/releases/download/v1.1.2/sersi-darwin-arm64.tar.gz"
      sha256 "43fa949b848dba1bbfafc539a2bc8a4ea9d758f790bec160f9457595fcffc0f7"
    end
  
    def install
      bin.install "sersi"
    end
  
    test do
      system "#{bin}/sersi", "--version"
    end
  end
  