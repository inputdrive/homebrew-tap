class AgenticAuditTools < Formula
  desc "Read-only local audit inventory for agentic coding tools"
  homepage "https://github.com/inputdrive/spark"
  url "https://github.com/inputdrive/spark/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "dae640b71fcf04c64e5758d586e620c8f3647dad5af000acf72634156d7a95cd"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    python_bin = (Formula["python@3.12"].opt_bin/"python3").to_s
    system python_bin, "-m", "pip", "install", "--no-deps", "--prefix=#{prefix}", "."
    bin.install_symlink prefix/"bin/agentic-audit-tools"
  end

  test do
    system bin/"agentic-audit-tools"
  end
end
