class Libgtextutils < Formula
  desc "Gordon's Text utils Library"
  homepage "https://github.com/merv1n34k/libgtextutils/tree/cmake_version"
  license "AGPLv3"
  url "https://github.com/merv1n34k/libgtextutils/releases/download/v0.2/libgtextutils-0.2.tar.gz"
  head "https://github.com/merv1n34k/libgtextutils.git", branch: "cmake_version"
  sha256 "03856375965bb2ec140f9a0a36d9c16f2617cbfe72d080284e5ef2e2e90dc343"

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
