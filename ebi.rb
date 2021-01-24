#!/usr/bin/ruby

require "date"

def ebi_age(year, month, day)
  today = Date.today
  birthday = Date.new(year, month, day)
  age = today.year - birthday.year

  if today.month < birthday.month or (today.month == birthday.month and today.day < birthday.day)
    age -= 1 # まだ誕生日を迎えていない
  end
  chugaku = age - 12
  "あなたは#{age}才です。中学#{chugaku}年生です"
end

#members = ["真山りか", "安本彩花", "廣田あいか", "星名美怜", "松野莉奈", "柏木ひなた", "小林歌穂", "中山莉子"]
#puts "私立恵比寿中学のメンバーには#{members.sample}がいます"
