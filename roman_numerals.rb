# From the following table,
# find the highest decimal value v that is less than
# or equal to the decimal number x
# and its corresponding roman numeral n:

#Define roman numeral class

Roman_Numeral = {
  1 => "I",
  4 => "IV",
  5 => "V",
  9 => "IX",
  10 => "X",
  40 => "XL",
  50 => "L",
  90 => "XC",
  100 => "C",
  400 => "CD",
  500 => "D",
  900 => "CM",
  1000 => "M",
}

#give equation to convert
#
# Write the roman numeral n that you found and subtract its value v from x:
# x = x - v
# Repeat stages 1 and 2 until you get zero result of x.

#puts the answer