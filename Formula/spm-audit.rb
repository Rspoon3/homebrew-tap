class SpmAudit < Formula
  desc "Audit and update Swift Package Manager dependencies"
  homepage "https://github.com/Rspoon3/spm-audit"
  url "https://github.com/Rspoon3/spm-audit/archive/refs/tags/0.1.0.tar.gz"
  sha256 "0a33c61600a64d33b39303249bb6155814b9bcc240d41025e80634ab29dffb8e"
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
