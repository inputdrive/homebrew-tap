class AgenticAuditTools < Formula
  desc "Read-only local audit inventory for agentic coding tools"
  homepage "https://github.com/inputdrive/spark"
  url "https://github.com/inputdrive/spark/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "dae640b71fcf04c64e5758d586e620c8f3647dad5af000acf72634156d7a95cd"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3")
    system "#{venv}/bin/python", "-m", "pip", "install", "."
    bin.install_symlink libexec/"bin/agentic-audit-tools"
  end

  test do
    system bin/"agentic-audit-tools"
  end
end
