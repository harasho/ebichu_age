#!/usr/bin/ruby

require "date"
birthday = Date.new(1999, 7, 21)
today = Date.today

age = today.year - birthday.year
if today.month < birthday.month or (today.month == birthday.month and today.day < birthday.day)
  age -= 1 # まだ誕生日を迎えていない
end

puts "あなたは#{age}歳です"
chugaku = age - 12
puts "あなたは中学#{chugaku}年生です"
