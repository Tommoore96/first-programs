line_width = 70
chapter = ['Getting Started', 'Numbers', 'Letters', 'Methods']
page = ['Page 4 ', 'Page 11', 'Page 17', 'Page 22']
x = 0

puts 'Table of Contents'.center(line_width)
while x < chapter.count

puts chapter[x].ljust(line_width/2) + page[x].rjust(line_width/2)
x = x + 1
end
