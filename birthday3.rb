# Write a program that helps users find the birth date and age of a person.
# The program should:
#
# * Prompt the user for a name
# * Print that person's name and birth date and age based on the data in the
# birthday_data.csv file

puts "To find out their birthday & age, please input a first or last name."
persons_name = gets.chomp

file = File.open('birthday_data.csv', "r")

file.each_line do | line |
  if line.include?(persons_name)
    info_array = line.split(",")
    age = info_array[2].split('/')
    year = age[0].to_i
    month = age[1].to_i
    day = age[2].to_i
    current_age = ((Time.now - Time.local(year, month, day))/60/60/24/365).to_i

    puts "#{info_array[1]} #{info_array[0]} was born on #{info_array[2]}. They are #{current_age} years old."

  else
    nil
  end
end

file.close
