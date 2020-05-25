#!/usr/bin/ruby
# frozen_string_literal: true

# This script populates the resultant hash with vowels

vowels_hash = {} # creating an empty hash to store the result
vowels = %w[a e i o u] # creating an array with vowels as the style guide narrates

=begin
creating a hash comprising alphabet of two ranges converted to arrays
.to_a -- to array
a.zip(b) -- creates an array of arrays each comprising pairs a, b
.to_h -- to hash
=end
alphabet_hash = ('a'..'z').to_a.zip(1..26).to_a.to_h
vowels.each do |vowel| # starting a loop to compare all vowels against the alphabet

=begin
.merge! -- populates itself with hash pairs
.select -- starts hash searching mechanism
=end
vowels_hash.merge!(alphabet_hash.select { |letter, _index| letter == vowel })
end
puts vowels_hash
