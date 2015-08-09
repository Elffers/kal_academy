# 1. Find the element that appears once in a sorted array where all other
# elements appear twice one after another. Find that element in 0(logn)
# complexity.

# Divide and conquer
def find_duplicate_in(array)
  return array.first if array.length == 1

  midpoint_index = array.length / 2
  midpoint = array[midpoint_index]
  previous = array[midpoint_index - 1]
  following = array[midpoint_index + 1]

  return midpoint unless midpoint == previous || midpoint == following

  if midpoint == previous
    ary1 = array[0, midpoint_index - 1 ]
    ary2 = array[midpoint_index + 1, array.length - 1]
  else
    ary1 = array[0, midpoint_index]
    ary2 = array[midpoint_index + 2, array.length - 1]
  end
  ary = ary1.length.odd? ? ary1 : ary2
  find_duplicate_in(ary)
end
