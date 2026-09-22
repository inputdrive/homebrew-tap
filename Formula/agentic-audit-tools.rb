class AgenticAuditTools < Formula
  include Language::Python::Virtualenv

  desc "Read-only local audit inventory for agentic coding tools"
  homepage "https://github.com/inputdrive/spark"
  url "https://github.com/inputdrive/spark/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "dae640b71fcf04c64e5758d586e620c8f3647dad5af000acf72634156d7a95cd"
  license "Apache-2.0"

  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"agentic-audit-tools"
  end
end
