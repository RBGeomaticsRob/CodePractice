# Given an array of numbers return an array of numbers from the array that qualify as perfect squares. A perfect square is defined as a whole number that, when square rooted, is a whole number. (Such as 1, 4, 9, 16, etc, etc.)

# Note: Return only one copy of each perfect square in ascendingorder


def get_squares(array)
array = Array (array)
array.delete_if {|x| Math.sqrt(x) != Math.sqrt(x).to_i}.uniq.sort!
end