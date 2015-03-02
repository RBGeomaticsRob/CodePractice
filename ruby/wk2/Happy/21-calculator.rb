# Create a class Calculator, which performs addition and subtraction of two numbers at a time.
class Calculator
  def add(x,y)
    x + y
  end

  def subtract(x,y)
    x - y
  end

  def multiply(x,y)
    x * y
  end

  def divide(x,y)
    x / y
  end

  def sum(array)
    total = 0
    array.each {|x| total += x}
    return total
  end
end

calculator = Calculator.new

puts calculator.add(7,7)

puts calculator.subtract(10,3)

# Try to add multiplication, division.

# Now try to account for arrays:

puts calculator.sum([1,2,3,4,5])
