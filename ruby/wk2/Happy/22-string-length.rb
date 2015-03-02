# Given an array containing some strings, return an array containing the length of those strings.

# You are supposed to write a method named 'length_finder' to accomplish this task.

# Example:
# Given ['Ruby','Rails','C42'] the method should return [4,5,3]

def length_finder(array)
  array.collect! {|x| x.length}
end

puts length_finder(['Ruby','Rails','C42'])
