class FastxToolkit < Formula
  desc "FASTA/FASTQ pre-processing programs"
  homepage "https://github.com/merv1n34k/fastx_toolkit"
  license "AGPLv3"
  url "https://github.com/merv1n34k/fastx_toolkit/releases/download/v0.0.7/fastx_toolkit-0.0.7.tar.gz"
  head "https://github.com/merv1n34k/fastx_toolkit.git"
  sha256 "ce1126b0ae61c4cab5ef314cd21e3e6b59781965eed1656982adf7268eeee1c7"

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
