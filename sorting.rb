some_array = ['Dog', 'Car', 'Fire', 'Lemon', 'Mut', 'Zebra', 'Speedboat']
other_array = ['Karma', 'Joy']
def sort some_array
puts 'Insert words individually here to see them ordered alphabetically, simply push \'enter\' without inputting anything to quit:'

word = gets.chomp.capitalize
 while word != ''
   some_array.push(word)
   sort some_array
 end
 if word == ''
   puts some_array.shuffle
   abort

 end
end

sort some_array
