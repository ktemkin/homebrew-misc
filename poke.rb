class Poke < Formula
  desc "GNU poke; a binary editor"
  homepage "https://www.jemarch.net/poke.html"
  head "https://git.savannah.gnu.org/git/poke.git"
  url "https://ftp.gnu.org/gnu/poke/poke-1.3.tar.gz"
  sha256 "ba7863034a1b08004b0ee8f88bda94160707e9a781d5556f555b507583cf0f1b"
  license "gpl"

  depends_on "bdw-gc"
  depends_on "json-c"
  depends_on "libtool"   => :build
  depends_on "bison"     => :build
  depends_on "automake"  => :build
  depends_on "autoconf"  => :build
  depends_on "gettext"   => :build
  depends_on "texinfo"   => :build
  depends_on "help2man"  => :build
  depends_on "gawk"      => :build
  depends_on "readline"  => :build

  def install

    if build.head?
      system "./bootstrap", "--skip-po"
    end

    system "./configure", *std_configure_args, "--disable-silent-rules"
    system "make", "-C", "jitter"
    system "make", "install"
  end

end
