# Write a function that accepts a starting and ending IPv4 address, and returns the number of IP addresses from start to end, excluding the end IP address.
# All input to the ipsBetween function will be valid IPv4 addresses in the form of strings. The ending address will be at least one address higher than the starting address.


# Examples:
# ipsBetween("10.0.0.0", "10.0.0.50") => returns 50
# ipsBetween("10.0.0.0", "10.0.1.0") => returns 256
# ipsBetween("20.0.0.10", "20.0.1.0") => returns 246


def ipsBetween(start, ending)
  end_ip = calc_items(ending.split".")
  start_ip = calc_items(start.split".")
  end_ip.inject(:+) - start_ip.inject(:+)
end

def calc_items(ip_address, multiplier = 256)
  ip_address.each_index {|index| ip_address[index] = ip_address[index].to_i * (multiplier**(3-index))}
end
#print calc_items(["10","0","0","50"])

print ipsBetween("10.0.0.0","10.0.0.50")




#----------------------------
#Best Practice Example

def ipsBetween_bp(start, ending)
  ip_to_int = lambda { |x| x.split('.').reduce(0) { |a, e| a*256+e.to_i } }
  ip_to_int.(ending) - ip_to_int.(start)
end

