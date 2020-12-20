p "旅行プランを選択してください"

sum = 0

puts <<~TEXT

1. 沖縄旅行(10000円)
2. 北海道旅行(20000円)
3. 九州旅行(15000円)

TEXT

print "プランの番号を選択 >"

plan = gets.chomp.to_i

case plan
when 1
	sum += 10000
	puts "沖縄旅行ですね。"
when 2
	sum += 20000
	puts "北海道旅行ですね"
when 3
	sum += 15000
	puts "九州旅行ですね"
end

p "何名で予約されますか？"
print "人数を入力 >"

traveler = gets.chomp.to_i

puts "#{traveler}名ですね。"

total_price = traveler * sum

p "合計金額は#{total_price}円になります。"