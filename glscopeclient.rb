class Glscopeclient < Formula
  desc "oscilloscope remote control tool"
  homepage "https://github.com/azonenberg/scopehal-apps"
  head "https://github.com/azonenberg/scopehal-apps.git"
  license "bsd"

  depends_on "cmake" => :build
  depends_on "ffts"
  depends_on "yaml-cpp"
  depends_on "glew"
  depends_on "gtkmm3"

  def install
     system "cmake", "-S", ".", "-B", "build", *std_cmake_args
     system "make", "-C", "build", "install"
  end

end
