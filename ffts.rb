class Ffts < Formula
  desc "fast fourier transform library"
  homepage "https://github.com/anthonix/ffts"
  head "https://github.com/anthonix/ffts.git"
  license "bsd"

  depends_on "cmake" => :build

  def install
     system "cmake", "-S", ".", "-B", "build", *std_cmake_args, "-DENABLE_SHARED:BOOL=ON"
     system "make", "-C", "build", "install"
  end

end
