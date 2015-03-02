# Create a function that takes a Roman numeral as its argument and returns its value as a numeric decimal integer. You don't need to validate the form of the Roman numeral.

# Modern Roman numerals are written by expressing each decimal digit of the number to be encoded separately, starting with the leftmost digit and skipping any 0s. So 1990 is rendered "MCMXC" (1000 = M, 900 = CM, 90 = XC) and 2008 is rendered "MMVIII" (2000 = MM, 8 = VIII). The Roman numeral for 1666, "MDCLXVI", uses each letter in descending order.

def solution(roman)
  roman = roman.upcase
  @total = 0
  while roman.length > 0 do
    double_char(roman)
  end
  @total
end

def double_char (roman)
  case
    when roman.include?("CM")
      roman.slice! "CM"
      @total += 900
    when roman.include?("CD")
      roman.slice! "CD"
      @total += 400
    when roman.include?("XC")
      roman.slice! "XC"
      @total += 90
    when roman.include?("XL")
      roman.slice! "XL"
      @total += 40
    when roman.include?("IX")
      roman.slice! "IX"
      @total += 9
    when roman.include?("IV")
      roman.slice! "IV"
      @total += 4
    else
      single_char(roman)
  end
end

def single_char (roman)
  case
    when roman.include?("M")
      roman.slice! "M"
      @total += 1000
    when roman.include?("D")
      roman.slice! "D"
      @total += 500
    when roman.include?("C")
      roman.slice! "C"
      @total += 100
    when roman.include?("L")
      roman.slice! "L"
      @total += 50
    when roman.include?("X")
      roman.slice! "X"
      @total += 10
    when roman.include?("V")
      roman.slice! "V"
      @total += 5
    when roman.include?("I")
      roman.slice! "I"
      @total += 1
    else
      @total += 0
  end
end

#print solution("MDCLXVI")

# A better solution



def better_solution(roman)
  conv = {'M' => 1000, 'CM' => 900, 'D' => 500, 'CD' => 400, 'C' => 100,'XC' => 90,
          'L' => 50, 'XL' => 40, 'X' => 10,'IX' => 9, 'V' => 5, 'IV' => 4, 'I' => 1}

  chars_regx = Regexp.new(conv.keys.join('|'))

  roman.scan(chars_regx).inject(0) {|total, key| total + conv[key]}
  #roman.scan(chars_regx).reduce(:+ conv[n])
end

print better_solution("MCIVI")