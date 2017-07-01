def ask question

puts question
reply = gets.chomp.downcase

if reply == 'yes'
  return true
else
  return false
end

while reply != 'yes' && reply != 'no'
  puts 'Answer yes or no.'
  puts question
  reply = gets.chomp.downcase
end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like eating tacos?'
ask 'Do you like eating burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like eating things?'
puts 'A few more...'
ask 'Do you like drinking beer?'
ask 'And what about snorting coke?'
puts
puts 'Cheers'
puts
puts wets_bed
