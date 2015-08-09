# 2. Given two strings, write a method to decide if one is a permutation of the other?

def permutation?(str1, str2)
  letter_counts(str1) == letter_counts(str2)
end

def letter_counts(str)
  counts = Hash.new 0
  str.each_char do |char|
    counts[char] += 1
  end
  counts
end

# 6. Given two sequences, print longest common subsequence

# LCS for input Sequences “ABCDGH” and “AEDFHR” is “ADH” of length 3.
# LCS for input Sequences “AGGTAB” and “GXTXAYB” is “GTAB” of length 4.

# 7. Given two string str1 and str2, find the shortest string that has
# both str1 and str2 as subsequences.

# Input: str1 = “AGGTAB”, str2=”GXTXAYB”
# Output: “AGXGTXAYB”
