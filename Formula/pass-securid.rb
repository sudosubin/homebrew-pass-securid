class PassSecurid < Formula
  desc "A pass extension for managing RSA SecurIDs"
  homepage "https://github.com/sudosubin/pass-securid#readme"
  url "https://github.com/sudosubin/pass-securid/archive/99e5da3fa7e2b5c613a3c275de182b82facd54a5.tar.gz"
  sha256 "ead1e485860825f2d6d194b7a1e2f37a3d40b901ffd30e06e8e540ec1a745a74"
  license "GPL-3.0"

  depends_on "pass"
  depends_on "stoken"

  def install
    system "make", "PREFIX=#{prefix}", "BASH_COMPLETION_DIR=#{bash_completion}", "install"
  end
end
