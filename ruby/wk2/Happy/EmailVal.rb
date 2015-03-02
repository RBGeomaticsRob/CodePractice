# Create a method that takes an email and returns true if valid, false otherwise.

def validate(email)
  !!(email =~ /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i)
end