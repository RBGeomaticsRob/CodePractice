# Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.

# Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.

def solution(roman)
roman = roman.upcase
total = 0
while roman.length > 0 do
  case
    when roman.include?("CM")
      roman.slice! "CM"
      total += 900
    when roman.include?("CD")
      roman.slice! "CD"
      total += 400
    when roman.include?("XC")
      roman.slice! "XC"
      total += 90
    when roman.include?("XL")
      roman.slice! "XL"
      total += 40
    when roman.include?("IX")
      roman.slice! "IX"
      total += 9
    when roman.include?("IV")
      roman.slice! "IV"
      total += 4
    else
        case
          when roman.include?("M")
            roman.slice! "M"
            total += 1000
          when roman.include?("D")
            roman.slice! "D"
            total += 500
          when roman.include?("C")
            roman.slice! "C"
            total += 100
          when roman.include?("L")
            roman.slice! "L"
            total += 50
          when roman.include?("X")
            roman.slice! "X"
            total += 10
          when roman.include?("V")
            roman.slice! "V"
            total += 5
          when roman.include?("I")
            roman.slice! "I"
            total += 1
          else
            total += 0
        end
  end

end
return total
end