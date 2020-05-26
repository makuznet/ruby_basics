#!/usr/bin/ruby
# frozen_string_literal: true

puts 'Put in a date, ex. 22.2.1978, and get a day number in this year:'
day, month, year = gets.chomp.split('.').map!(&:to_i) # (&:to_i) does the same as { |a| a.to_i }
days_per_month = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

day_number = days_per_month.take(month - 1).sum + day # sum of former months and days
day_number += 1 if ((year % 4).zero? || (year % 400).zero?) && month >= 3 # leap year

print "It appears to be day #{day_number} in #{year}. \n"
