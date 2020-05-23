#!/usr/bin/ruby
# frozen_string_literal: true

puts 'Let\'s build a word usage histogram! Your text, please:'
text = gets.chomp # user input
words = text.split { ' ' } # spliting a string into an array elements
frequencies = Hash.new(0) # creating an empty hash with zero value
words.each do |key| # populating the hash with key == word, value == usage_frequency
  frequencies[key] += 1
end
frequencies = frequencies.sort_by { |_word, count| count } # sorting the hash
frequencies.reverse! # putting the most frequent on top
frequencies.each do |word, count| # visualizing results with a loop
  puts word + ' ' + count.to_s
end
