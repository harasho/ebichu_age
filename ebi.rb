#!/usr/bin/ruby

require "date"

def ebi_age(year, month, day)
  today = Date.today
  birthday = Date.new(year, month, day)
  age = today.year - birthday.year

  if today.month < birthday.month or (today.month == birthday.month and today.day < birthday.day)
    age -= 1 # まだ誕生日を迎えていない
  end
 
  puts "あなたは#{age}歳です"
  chugaku = age - 12
  puts "あなたは中学#{chugaku}年生です"
end

ebi_age(2002,3,11)
