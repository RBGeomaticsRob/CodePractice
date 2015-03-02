# Complete the function/method so that it takes CamelCase string and returns the string in snake_case notation. Lowercase characters can be numbers. If method gets number, it should return string.

def to_underscore(string)
  string.is_a?(String) ? string.gsub!(/(.)([A-Z])/,'\1_\2').downcase! : "#{string}"
end