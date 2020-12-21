p "旅行プランを選択してください"

sum = 0

puts <<~TEXT
  1. 沖縄旅行（10000円）
  2. 沖縄旅行（20000円）
  3. 沖縄旅行（15000円）
  TEXT

print "プランの番号を選択　>"

plan = gets.chomp.to_i

case plan
when 1
  sum =+ 10000
  puts "沖縄旅行ですね。"
when 2
  sum =+ 20000
  puts "北海道旅行ですね。"
when 3
  sum =+ 15000
  puts "九州旅行ですね。"
end

puts "何名で予約されますか？"
print "人数を入力　>"

traveler = gets.chomp.to_i

puts "#{traveler}ですね。"

total_price = sum * traveler

if traveler.to_i >= 5
  puts "5名以上ですので10%割引となります。"
  puts "合計金額は#{total_price.to_i * 0.9}円となります。"
else
  puts "合計料金は#{total_price}円になります。"
end
