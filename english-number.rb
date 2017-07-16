def english_number number
  if number < 0
    puts 'Please return a number that isn\'t negative.'
  end
  if number == 0
    puts 'zero'
  end

  num_string = '' #string to be returned

  digits = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifthteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  tens = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty','seventy', 'eighty', 'ninety']

  #  "left" is how much of the number is left to write out

  #  "write" is the part currently being written out

  left = number
  write = left/1000000000
  left = left - write*1000000000
  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left/1000000
  left = left - write*1000000

  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left/1000
  left = left - write*1000

  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left/100            #  How many hundreds are there?
  left = left - write*100     #  Remove the hundreds

  if write > 0
    #  recursion
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      #  to create a space
      num_string = num_string + ' and '
    end
  end

  write = left/10
  left = left - write*10

  if write > 0
    if ((write ==1) and (left > 0))  #  if it's a teen
      num_string = num_string + teens[left-1]
      left = 0
    else
      num_string = num_string + tens[write-1]
    end

    if left > 0
      num_string = num_string + ' and '
    end
  end

  write = left  #  how many digits are left
  left = 0      #  subtract them digits i.e. "zero left"

  if write > 0
    num_string = num_string + digits[write-1]
  end

  num_string

end

puts english_number (579)
puts english_number (59809)
puts english_number (19320)
puts english_number (1000000)
puts english_number (23090000)
puts english_number (138090010)
puts english_number (1380290010)
