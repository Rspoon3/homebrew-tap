class SpmAudit < Formula
  desc "Audit and update Swift Package Manager dependencies"
  homepage "https://github.com/Rspoon3/spm-audit"
  url "https://github.com/Rspoon3/spm-audit/archive/refs/tags/0.2.0.tar.gz"
  sha256 "b0717480af26188a6b920b82fc7cada6b47751a507797e4bb4ed668eae8cb35c"
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
