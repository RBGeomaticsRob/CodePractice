# Write a function that determines if given number is a power of two. A power of two means a number of the form 2^n where n is an integer, i.e. the result of exponentiation with number two as the base and integer n as the exponent. I.e. 1024 is a power of two: it 2^10.

def power_of_two?(x)
  if x < 1
    return false
  end

  while x > 1
    if x % 2 == 0
      x /= 2
    else
      return false
    end
  end

  return true
end

#-----------------------
#

def power_of_two_bp?(x)
  x & (x-1)  == 0
end