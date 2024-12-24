require_relative './lib/bubblesort'
require_relative './lib/stockpicker'
require_relative './lib/substrings'

puts "Bubble Sort Test"
array = [12, 64, 91, 38, 82, 62, 66, 12, 9, 53]
p bubble_sort(array)
puts "\n"

puts "Stockpicker Test"
array = [17, 3, 6, 9, 2, 15, 8, 6, 20, 1, 10]
p stockpicker(array)
puts "\n"

puts "Substrings Test"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)