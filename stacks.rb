# Stacks
#
# 6. Find missing paren in a given expression

def missing_paren(expr)
  stack = []
  expr.each_char.with_index do |char, i|
    if char =~ /\(/
      stack.push i
    elsif char =~ /\)/
      if stack.empty?
        return i
      else
        stack.pop
      end
    end
  end
  stack.first
end
