class Md2pdf < Formula
  desc "Generate PDFs from Markdown files"
  homepage "https://github.com/tcd/md2pdf"
  url "https://github.com/tcd/md2pdf/releases/download/v0.0.7/md2pdf-darwin-amd64.tar.gz"
  sha256 "32fbf067cab9ca60d546047d0fa4aa701a66b278c93f8578af5fdfbae4d89fd8"

  def install
    bin.install "md2pdf"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test md2pdf`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "#{bin}/md2pdf", "--version"
  end
end

