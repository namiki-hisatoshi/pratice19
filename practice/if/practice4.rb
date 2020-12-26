puts "旅行プランを選択して下さい。"

sum = 0

puts <<~TEXT
  1. 沖縄旅行 (10000円)
  2. 北海道旅行 (20000円)
  3. 九州旅行 (15000円)
  TEXT

while true
print "プランの番号を選択 > "
select_plan_num = gets.chomp.to_i
break if(1..3).include?(select_plan_num)
puts "1~3の番号を入力して下さい。"
end

case select_plan_num
  when 1
    puts "沖縄旅行ですね。"
    sum += 10000
  when 2
    puts "北海道旅行ですね。"
    sum += 20000
  when 3
    puts "九州旅行ですね。"
    sum += 15000
end

puts "何名で予約されますか？"

while true
print "人数を入力 > "
num_of_people = gets.chomp.to_i
break if(num_of_people >= 1)
puts "１以上を入力して下さい。"
end

puts "#{num_of_people}名ですね。"

total_price = sum * num_of_people

if num_of_people >= 5
  puts "5名以上ですので10%割引となります"
  total_price *= 0.9
end

puts "合計金額は#{total_price.floor}円になります。"
