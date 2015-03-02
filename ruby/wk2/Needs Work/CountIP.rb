# Write a function that accepts a starting and ending IPv4 address, and returns the number of IP addresses from start to end, excluding the end IP address.
# All input to the ipsBetween function will be valid IPv4 addresses in the form of strings. The ending address will be at least one address higher than the starting address.


# Examples:
# ipsBetween("10.0.0.0", "10.0.0.50") => returns 50
# ipsBetween("10.0.0.0", "10.0.1.0") => returns 256
# ipsBetween("20.0.0.10", "20.0.1.0") => returns 246

def ipsBetween(start, ending)
  start_ip = start.split"."
  end_ip = ending.split"."

  (end_ip[0].to_i * 16777216 + end_ip[1].to_i * 65536 + end_ip[2].to_i * 256 + end_ip[3].to_i) - (start_ip[0].to_i * 16777216 + start_ip[1].to_i * 65536 + start_ip[2].to_i * 256 + start_ip[3].to_i)

end