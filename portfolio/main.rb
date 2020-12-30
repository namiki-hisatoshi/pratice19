
puts <<~TEXT

               ＜マルバツゲーム＞

              ======ルール======
  ・player1が「○」、player2が「✖️」を交互に置く

  ・1~9の数字を選択すると該当する数字の場所に○か✖️を置く

  ・先に縦・横・斜めの１列が揃うと勝利

  TEXT

tables = [
  ["1", "2", "3"],
  ["4", "5", "6"],
  ["7", "8", "9"]
]

tables.each do |table|
  puts "|#{table[0]}" + "|" + "#{table[1]}" + "|" + "#{table[2]}" + "|"
end

  def action(tables)
    while true
      print "番号を選択して下さい > "
      select_num = gets.to_i
      break if(1..9).include?(select_num)
      puts "1~9の番号で選択して下さい。"
    end
    if select_num -1 == tables[0[0]] || [0[1]] || [0[2]] || [1[0]] || [1[1]] ||[1[2]] || [2[0]] || [2[1]] || [2[2]]
      tables = "○"
    end
  end


  action(tables)
