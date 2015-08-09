require_relative "strings"

describe "permutation?" do
  it "returns true if two strings are permuations of each other" do
    str1 = "abc"
    str1 = "bca"
    expect(permutation?(str1, str2)).to eq true
  end

  it "returns true if two strings are permuations of each other" do
    str1 = "abc"
    str1 = "tca"
    expect(permutation?(str1, str2)).to eq false
  end
end

decribe "longest_subsequence" do
  it "returns the longest substring of both strings" do
    str1 = "AGGTAB",
      str2="GXTXAYB"
    expect(output(str1, str2)).to eq "GTAB"
  end
end

describe "shortest_string" do

  it "returns the shortest string with both substrings" do
    str1 = "geek"
    str2="eke"
    expect(output(str1, str2)).to eq "geeke"

    str1 = "AGGTAB",
      str2="GXTXAYB"
    expect(output(str1, str2)).to eq "AGXGTXAYB"
  end
end
