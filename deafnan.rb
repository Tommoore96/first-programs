while true
  statement = gets.chomp
  year = 1930 + rand(25)
  if statement == statement.upcase && statement != 'BYE!'
    puts 'NO, NOT SINCE ' + year.to_s + '!'
  elsif statement != 'BYE!'
    puts 'HUH?!  SPEAK UP SONNY!'
  end

  if statement == 'BYE!'
    puts 'WHAT!?'
    response_1 = gets.chomp
  end

  if response_1 == 'BYE!'
    puts 'WHO!?'
    response_2 = gets.chomp
  end

  if response_2 == 'BYE!'
    break
  end

end
