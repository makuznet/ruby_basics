#!/usr/bin/ruby
# frozen_string_literal: true

# This script populates the resultant hash with vowels
vowels_hash = {} # creating an empty hash to store the result
vowels = %w[a e i o u] # creating an array with vowels as the style guide narrates
alphabet_hash = ('a'..'z').to_a.zip(1..26).to_a.to_h # creating a hash comprising alphabet
vowels.each do |vowel| # starting a loop to compare all vowels against the alphabet
  vowels_hash.merge!(alphabet_hash.select { |letter, _index| letter == vowel })
end
puts vowels_hash
