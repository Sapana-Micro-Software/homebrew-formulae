class Document2audio < Formula
    desc "Convert PDF documents to audio and play on VLC with M3U playlist"
    homepage "https://github.com/Sapana-Micro-Software/document2audio"
    url "https://github.com/Sapana-Micro-Software/document2audio/archive/refs/tags/v0.0.1.tar.gz"
    sha256 "aab4a71e7680b8691118ef6835208b3cc825f99de54680caca45521f6ff2f7ed"
    license "Copyright (c) 2024 Sapana Micro Software"
  
    depends_on "imagemagick"
    depends_on "tesseract"
    depends_on "ffmpeg"
  
    def install
      bin.install "document2audio.sh" => "document2audio"
    end
  
    test do
      system "#{bin}/document2audio", "--version"
    end
  end