# Create a method/function that returns an array of numbers from 1 to 100.

# If no arguments are passed the value at the index of the array for number should be 'Fizz' if it is divisible by 3, 'Buzz' if divisible by 5, 'FizzBuzz' if it divisible by both 3 and 5, or the number if it is not divisible by 3 or 5.

# The method should take up to 4 arguments:

# The first and second arguments are strings, which should be 'Fizz' and 'Buzz' by default.

# The third and fourth arguments are integers and and should be 3 and 5 by default.

def fizz_buzz_custom(string_1 = "Fizz", string_2 = "Buzz", num_1 = 3, num_2 = 5)

(1..100).map do |i|
  case
    when i % num_1 == 0 && i % num_2 == 0
      i = string_1 + string_2
    when i % num_1 == 0
      i = string_1
    when i % num_2 == 0
      i = string_2
    else
      i
  end
end

end