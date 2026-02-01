class SpmAudit < Formula
  desc "Audit and update Swift Package Manager dependencies"
  homepage "https://github.com/Rspoon3/spm-audit"
  url "https://github.com/Rspoon3/spm-audit/archive/refs/tags/0.3.0.tar.gz"
  sha256 "f426be0a26b67e2260b49f93d17d70b9ce8705dfc1ccdb4e4a819e1f5fde9fdd"
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
