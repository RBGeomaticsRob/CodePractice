# You're a kata author trying to prevent code warriors from using Ruby's built in random number generators because you want them to implement their own.

# Prevent the usage of random number generators by preventing calls to rand and srand in both the Kernel module and the Random class. Also prevent sneaky types from using sample and shuffle on arrays to get random numbers.

# The test will require calls to these methods to throw an error.

# Extra points for discussion about ways to call random even after running solutions which pass the test.

class Object
  module Kernel
    class << self
      undef_method :rand
      undef_method :srand
    end
    undef_method :rand
    undef_method :srand
  end
end

class << Random
undef_method :rand
undef_method :srand
end

class Random
undef_method :rand
end

class Array
  undef_method :sample
  undef_method :shuffle
end