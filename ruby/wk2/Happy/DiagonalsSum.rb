# Description:

# Given a "square" array of subarrays, find the sum of values from the first value of the first array, the second value of the second array, the third value of the third array, and so on...

# Example 1:

# exampleArray = [[1, 0, 0, 0],
#                 [0, 1, 0, 0],
#                 [0, 0, 1, 0],
#                 [0, 0, 0, 1]]

# diagonalSum(exampleArray) # => 4
# Example 2:

# exampleArray = [[1, 0, 0, 0, 0],
#                 [0, 1, 0, 0, 0],
#                 [0, 0, 1, 0, 0],
#                 [0, 0, 0, 1, 0],
#                 [0, 0, 0, 0, 1]]

# diagonalSum(exampleArray) # => 5


def diagonalSum(matrix)
total = 0
  (0...matrix.length).each {|sub| total += matrix[sub][sub]}
return total
end