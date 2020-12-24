require './method'

plans = [
  {place: "沖縄", price:10000},
  {place: "北海道", price:20000},
  {place: "九州", price:15000}
]


# 目次

# プランを表示
disp_plan(plans)
# プランを選択
chosen_plan = choose_plan(plans)
# 人数を選択
quantity_of_num = reservation(chosen_plan)
# 合計金額を表示
calculate_money(chosen_plan, quantity_of_num)
