class Sersi < Formula
    desc "Scaffold full-stack apps with presets and hooks"
    homepage "https://github.com/sersi-project/sersi"
    version "0.0.0-alpha"

    if Hardware::CPU.intel?
      url "https://github.com/sersi-project/sersi/releases/download/v0.0.0-alpha/sersi-darwin-amd64.tar.gz"
      sha256 "105ff6cc8cf51670e45559aeedf5a5bf256cb39415baa35e246af8229b0eb3e8"
    elsif Hardware::CPU.arm?
      url "https://github.com/sersi-project/sersi/releases/download/v0.0.0-alpha/sersi-darwin-arm64.tar.gz"
      sha256 "46a72d3017743b3ad6a691c2222f5afae540cc1501cab76c7e1aa029be3eb14d"
    end
  
    def install
      bin.install "sersi"
    end
  
    test do
      system "#{bin}/sersi", "--version"
    end
  end
  