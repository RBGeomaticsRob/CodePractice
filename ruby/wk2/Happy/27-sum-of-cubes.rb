# Compute the sum of cubes for a given range a through b.

# Write a method called sum_of_cubes to accomplish this task

# Example Given range 1 to 3 the method should return 36

def sum_of_cubes(x,y)
  calc = 0
  (x..y).each {|i| calc += i**3 }
  return calc
end

puts sum_of_cubes(1,3) #=> 36
