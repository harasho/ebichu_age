#!/usr/bin/env ruby

require 'date'

# 中学在学とみなす開始年齢
MIDDLE_SCHOOL_START_AGE = 12
# 小学在学とみなす開始年齢
ELEMENTARY_SCHOOL_START_AGE = 6

##
# 指定した生年月日から現在の年齢を計算し
# 中学生換算での学年を返す
#
# @param year  [Integer] 誕生年
# @param month [Integer] 誕生月
# @param day   [Integer] 誕生日
# @return [String] 年齢と中学何年生かを示す文字列
def ebi_age(year, month, day)
  current_date = Date.today
  birthdate = Date.new(year, month, day)
  age = current_date.year - birthdate.year

  if current_date.month < birthdate.month ||
     (current_date.month == birthdate.month && current_date.day < birthdate.day)
    age -= 1 # まだ誕生日を迎えていない
  end

  if age < ELEMENTARY_SCHOOL_START_AGE
    "あなたは#{age}才です。未就学児です"
  elsif age < MIDDLE_SCHOOL_START_AGE
    "あなたは#{age}才です。小学生です"
  else
    middle_school_year = age - (MIDDLE_SCHOOL_START_AGE - 1)
    "あなたは#{age}才です。中学#{middle_school_year}年生です"
  end
end

# 私立恵比寿中学 メンバー変遷（簡易メモ）
# - 初期メンバー（結成当初から活動）:
#   真山りか / 安本彩花 / 廣田あいか / 星名美怜 / 松野莉奈 / 柏木ひなた
# - 後加入メンバー:
#   小林歌穂 / 中山莉子
# - 卒業・転出:
#   廣田あいか（2018年）, 柏木ひなた（2022年）
# - 逝去:
#   松野莉奈（2017年）
#
# members = ["真山りか", "安本彩花", "星名美怜", "小林歌穂", "中山莉子"]
# puts "私立恵比寿中学のメンバーには#{members.sample}がいます"
