# 本編
# プランを表示する
def disp_plan(plans)
  puts "旅行プランを選択して下さい。"
  plans.each.with_index(1) do |plan, i|
      puts "#{i}. #{plan[:place]}旅行 (#{plan[:price]}円)"
  end
end
# プランを選択する
def choose_plan(plans)
  print "プランの番号を選択 > "
  while true
    select_plan_num = gets.to_i
    break if(1..3).include?(select_plan_num)
      puts "1~3番で選択して下さい"
    end
  plans[select_plan_num - 1]
end
# 人数を選択する
def reservation(chosen_plan)
  puts "#{chosen_plan[:place]}旅行ですね。何名で予約されますか？"
  print "人数を入力　> "
  while true
  quantity_of_plan = gets.to_i
  break if quantity_of_plan.to_i >= 1
   puts "１以上を入力して下さい。"
 end
 quantity_of_plan
end
# 合計金額を表示する
def calculate_chages(chosen_plan, quantity_of_plan)
  puts "#{quantity_of_plan}名ですね。"
  total_price = chosen_plan[:price] * quantity_of_plan
  if quantity_of_plan >= 5
    puts "5名以上ですので10%割引となります。"
    total_price *= 0.9
  end
  puts "合計金額は#{total_price.floor}円になります。"
end
