# Create a method min_by that accepts a list and a block, runs the block for each item in the list, and returns the item with the lowest block return value.

# If you need help, here's a reference:

# http://www.rubycuts.com/enum-min-by

def min_by list, &block
  list.min {|num| block.call(num)}
end