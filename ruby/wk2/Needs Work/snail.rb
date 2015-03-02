# Snail Sort

# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

# array = [[1,2,3],
#          [4,5,6],
#          [7,8,9]]
# snail(array) #=> [1,2,3,6,9,8,7,4,5]
# For better understanding, please follow the numbers of the next array consecutively:

# array = [[1,2,3],
#          [8,9,4],
#          [7,6,5]]
# snail(array) #=> [1,2,3,4,5,6,7,8,9]

def snail(array)

new = []
n = array.length

while n > 1
  new.push(array[0]).flatten!
  (1...n).each {|i| new.push(array[i].pop)}
  array.shift
  n = n-1

  if n > 1
    (0...n).reverse_each {|i| new.push(array[n-1][i])}
    (0...n-1).reverse_each {|i| new.push(array[i].shift)}
    array.pop
    n= n-1
  else
    new.push(array.pop).flatten!
    return new
  end

end

new.push(array.pop).flatten!

return new

end