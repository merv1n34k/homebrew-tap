class FastxToolkit < Formula
  desc "FASTA/FASTQ pre-processing programs"
  homepage "https://github.com/merv1n34k/fastx_toolkit/tree/homebrew"
  license "AGPLv3"
  url "https://github.com/merv1n34k/fastx_toolkit/releases/download/v0.0.6/fastx_toolkit-0.0.6.tar.gz"
  head "https://github.com/merv1n34k/fastx_toolkit.git", branch: "homebrew"
  sha256 "6921e88dc2209ed8ec53e6a2edc0d5ec36c697ad19d7ecece543e723be618b29"

  depends_on "cmake" => :build
  depends_on "gcc" => :build
  depends_on "pkg-config"
  depends_on "merv1n34k/tap/libgtextutils"

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
