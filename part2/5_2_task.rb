#!/usr/bin/ruby
# frozen_string_literal: true

puts 'Put in a date, ex. 22.2.1978, and get a day number in this year:'
input = gets.chomp
user_date = input.split('.').map!(&:to_i) # { |a| a.to_i }
days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
day_number = days_per_month.take(user_date[1] - 1).sum + user_date[0]
day_number += 1 if ((user_date[2] % 4).zero? || (user_date[2] % 400).zero?) && user_date[1] >= 3
print "It appears to be day #{day_number} in #{user_date[2]}. \n"
