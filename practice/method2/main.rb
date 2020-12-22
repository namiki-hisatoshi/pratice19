require './method'


plans = [
  {place: "沖縄", price: 10000},
  {place: "北海道", price: 20000},
  {place: "九州", price: 15000}
]

# 目次
# プランを表示する
disp_plan(plans)
# プランを選択する
chosen_plan = choose_plan(plans)
# 人数を選択する
quantity_of_plan = reservation(chosen_plan)
# 合計金額を表示する
calculate_chages(chosen_plan, quantity_of_plan)
