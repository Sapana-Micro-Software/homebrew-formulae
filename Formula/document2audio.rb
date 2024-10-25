class Document2audio < Formula
    desc "Convert PDF documents to audio and play on VLC with M3U playlist"
    homepage "https://github.com/Sapana-Micro-Software/Document2Audio"
    url "https://github.com/Sapana-Micro-Software/Document2Audio/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "d13016f67bdda487b589e0dca17bcd2594f3b2f2a116b88db8fba52f66c0548e"
    license "Copyright (c) 2024 Sapana Micro Software"
  
    depends_on "imagemagick"
    depends_on "tesseract"
    depends_on "ffmpeg"
  
    def install
      bin.install "document2audio.sh" => "document2audio"
      chmod 0755, bin/"document2audio"
    end
  
    test do
      system "#{bin}/document2audio", "--version"
    end
  end
