class Libgtextutils < Formula
  desc "Gordon's Text utils Library "
  homepage "https://github.com/merv1n34k/libgtextutils/tree/cmake_version"
  license "AGPLv3"
  url "https://github.com/merv1n34k/libgtextutils/releases/download/v0.1/libgtextutils-0.1.tar.gz"
  head "https://github.com/merv1n34k/libgtextutils.git", branch: "cmake_version"
  sha256 "91231d92cd15eae9228704a2b15041da85d40851969eb8fdde255dacaab6a267"

  depends_on "cmake" => :build
  depends_on "gcc" => :build

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    system "false"
  end
end
