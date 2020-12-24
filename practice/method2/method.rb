# 本編

# プランを表示
def disp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
    puts "#{i}. #{plan[:place]}旅行 (#{plan[:price]}円)"
  end
end
# プランを選択
def choose_plan(plans)
  while true
  print "プランの番号を選択 > "
    select_num = gets.to_i
    break if(1..3).include?(select_num)
    puts "1~3の番号で選んでください。"
  end
  plans[select_num - 1]
end
# 人数を選択
def reservation(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。何名で予約されますか？"
  while true
    puts "人数を入力 > "
    quantity_of_num = gets.to_i
    break if(quantity_of_num.to_i >= 1)
    puts "1以上を入力して下さい。"
  end
  quantity_of_num
end
# 合計金額を表示
def calculate_money(chosen_plan, quantity_of_num)
  puts "#{quantity_of_num}名ですね。"
  total_price = quantity_of_num * chosen_plan[:price]
  if quantity_of_num >= 5
    puts "5名以上ですので10%割引となります"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
