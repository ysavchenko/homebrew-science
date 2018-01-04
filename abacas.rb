class Abacas < Formula
  desc "Automatic contiguation of assembled sequences"
  homepage "https://abacas.sourceforge.io/"
  url "https://downloads.sourceforge.net/project/abacas/abacas.1.3.1.pl"
  sha256 "0afee209a4f879987b320e2f882bc0eab540a7a712a81a5f01b9795d2749310d"
  # doi "10.1093/bioinformatics/btp347"
  # tag "bioinformatics"

  bottle :unneeded

  depends_on "mummer"

  def install
    inreplace "abacas.1.3.1.pl", "/usr/local/bin/perl", "/usr/bin/env perl"
    bin.install "abacas.1.3.1.pl" => "abacas"
  end

  test do
    assert_match "tblastx", shell_output("#{bin}/abacas -h 2>&1", 255)
  end
end
