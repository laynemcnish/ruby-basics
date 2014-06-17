# Asks the user to write something
# Prints "HUH?! SPEAK UP SONNY!"
#if the user didn't type in all uppercase
#Prints "NO, NOT SINCE 1944!" if the user types
#something in all caps

#Each time the program prints "NO, NOT SINCE 1944!",
#it should print a different, random year between 1930 and 1950.

puts "You're visiting Granny. Please say something to her."
reply = gets.chomp

while reply != reply.upcase
  puts "HUH?! SPEAK UP SONNY!"
  puts "Please say something to Granny. Louder this time!"
  reply = gets.chomp()
end

  puts "NO, NOT SINCE #{rand(1930..1950)}"

