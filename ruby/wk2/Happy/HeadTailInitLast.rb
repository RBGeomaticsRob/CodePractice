# Haskell has some useful functions for dealing with lists:

# $ ghci
# GHCi, version 7.6.3: http://www.haskell.org/ghc/  :? for help
# λ head [1,2,3,4,5]
# 1
# λ tail [1,2,3,4,5]
# [2,3,4,5]
# λ init [1,2,3,4,5]
# [1,2,3,4]
# λ last [1,2,3,4,5]
# 5
# Your job is to implement these functions in your given language. Make sure it doesn't edit the array; that would cause problems! Here's a cheat sheet:

# | HEAD | <----------- TAIL ------------> |
# [  1,  2,  3,  4,  5,  6,  7,  8,  9,  10]
# | <----------- INIT ------------> | LAST |

# head [x] = x
# tail [x] = []
# init [x] = []
# last [x] = x


def head(array)
  array.first
end

def tail(array)
array[1...array.length]
end

def init(array)
array[0...array.length-1]
end

def last(array)
array.last
end