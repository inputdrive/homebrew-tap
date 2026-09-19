class AgenticAuditTools < Formula
  desc "Read-only local audit inventory for agentic coding tools"
  homepage "https://github.com/inputdrive/spark"
  url "https://github.com/inputdrive/spark/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "5d4248f5c2964d1b7c9dccf01706ac409d9aa0acef63724266be3281575e1d95"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3")
    system "#{venv}/bin/python", "-m", "pip", "install", "."
    bin.install_symlink libexec/"bin/agentic-audit-tools"
  end

  test do
    system "#{bin}/agentic-audit-tools", "--help"
  end
end
