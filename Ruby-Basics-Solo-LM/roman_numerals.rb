# From the following table,
# find the highest decimal value v that is less than
# or equal to the decimal number x
# and its corresponding roman numeral n:

#Define roman numeral class

@roman_numeral = [
  ["I" , 1],
  ["IV" , 4],
  ["V" , 5],
  ["IV" , 9],
  ["X" , 10],
  ["XL", 40],
  ["L" , 50],
  ["XC" , 90],
  ["C" , 100],
  ["CD" , 400],
  ["D" , 500],
  ["CM" , 900],
  ["M" , 1000]
]

@roman =%r{^[CDILMVX]*$}
@arabic =%r{^[0-9]*$}

def toRoman(num)
  reply = ""
  for key, value in @roman_numeral
    count, num = num.divmod(value)
    reply << (key * count)
  end
  reply
  end

def toArabic(rom)
  reply = 0
  for key, value in @roman_numeral
    while rom.index(key) == 0
      reply += value
      rom.slice!(key)
    end
  end
  reply
end

$stdin.each do |line|
  case line
    when @roman
      puts toArabic(line)
    when @arabic
      puts toRoman(line.to_i)
  end
end
break
