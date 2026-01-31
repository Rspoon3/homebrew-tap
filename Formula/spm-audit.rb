class SpmAudit < Formula
  desc "Audit and update Swift Package Manager dependencies"
  homepage "https://github.com/Rspoon3/spm-audit"
  url "https://github.com/Rspoon3/spm-audit/archive/refs/tags/0.1.1.tar.gz"
  sha256 "cad41118e39a849b06b26a568936f4cb789e5a2221f002dceb5d7962aa3469c3"
  license "MIT"

  depends_on xcode: ["14.0", :build]

  def install
    system "swift", "build", "-c", "release", "--disable-sandbox"
    bin.install ".build/release/spm-audit"
  end

  test do
    system "#{bin}/spm-audit", "--version"
  end
end
