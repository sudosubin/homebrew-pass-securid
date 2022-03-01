class PassSecurid < Formula
  desc "A pass extension for managing RSA SecurIDs"
  homepage "https://github.com/sudosubin/pass-securid#readme"
  version "0.1.1"
  license "GPL-3.0"

  url "https://github.com/sudosubin/pass-securid/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "d1e43f628edecb1d7d1032fee7a1814cfd6175123ee1d9be0f675ec01316727a"

  depends_on "pass"
  depends_on "stoken"

  def install
    system "make", "PREFIX=#{prefix}", "BASH_COMPLETION_DIR=#{bash_completion}", "install"
  end
end
