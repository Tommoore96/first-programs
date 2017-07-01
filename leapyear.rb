puts 'To count the amount of leap years in any given time period, please enter the start year here:'
start_year = gets.chomp.to_i

puts 'And now your end year here:'
end_year = gets.chomp.to_i
puts ''

#repeat command
while start_year.to_i <= end_year.to_i

  if start_year.to_f%400 == 0
    puts start_year
  elsif start_year.to_f%100 == 0
  elsif start_year.to_f%4 == 0
    puts start_year
  end
#this command sorts through all the years
  start_year = start_year.to_i + 1

end
