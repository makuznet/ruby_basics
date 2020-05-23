#!/usr/bin/ruby
months = { # creating a hash
  'January' => 31,
  'February' => 28,
  'March' => 31,
  'April' => 30,
  'May'  => 31,
  'June' => 30,
  'July' => 31,
  'August' => 31,
  'September' => 30,
  'October' => 31,
  'November' => 30,
  'December' => 31
}
months.each { |month, days| #assigning vars to hash keys and values
if days == 30
  puts "#{month}: #{days}"
end
}
