class Fileum < Formula
  desc "Entity-centric file organization CLI"
  homepage "https://github.com/centient-labs/fileum"
  version "0.1.1"

  depends_on :macos
  depends_on arch: :arm64

  url "https://github.com/centient-labs/homebrew-fileum/releases/download/v#{version}/fileum-macos-arm64.tar.gz"
  sha256 "5b7560ddca34c80a841cc997b8622b1f95fe17e050aa970074d1728cb45c6dd6"

  def install
    bin.install "fileum"
    # Bundle templates alongside binary
    (share/"fileum"/"templates"/"conventions").install Dir["templates/conventions/*.json"]
    (share/"fileum"/"templates"/"entity-types").install Dir["templates/entity-types/*.json"]
    (share/"fileum"/"templates"/"personas").install Dir["templates/personas/*.json"]
    (share/"fileum"/"templates"/"schema").install Dir["templates/schema/*.json"]
  end

  test do
    assert_match "fileum #{version}", shell_output("#{bin}/fileum version")
  end
end
