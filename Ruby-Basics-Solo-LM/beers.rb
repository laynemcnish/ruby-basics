#User must type "sing 99" where 99 is any positive number
#if user runs the program without typing anything, print
#"I need to know how many bottles to sing"

#If user runs the program & specifies a verse with "sing<number>"
# print all the lines starting at that verse

#If user types anything but "sing<number>", show error and exit

puts "Let's sing about booze."
prompt = "  Please tell me how many you'd like to sing about (ie sing 88)"
beers_count = gets.chomp

if beers_count == ""
  puts "I need to know how many bottles to sing"
  prompt
  beers_count = gets.chomp()
end

beer_array = beers_count.split
sing = beer_array[0]
sing_num = beer_array[1].to_i


if sing == "sing" && sing_num >= 1 && beer_array.size == 2
  sing_num.downto(1) {|num| puts "#{num} bottles of beer on the wall, #{num} bottles of beer. Take one down pass it around, #{(num)-1} bottles of beer on the wall."}
else
  puts "You didn't do it right"
end







