
hand = {1 => "グー", 2 =>"チョキ", 3 => "パー"}
face = {1 =>"上", 2 =>"下", 3 =>"右", 4 =>"左"}

puts "グー(1)、チョキ(2)、パー（3)から選んでください。"

player = gets.to_i 
enemy_element = [1,2,3]
enemy = enemy_element.sample
element_type = [1,2,3,4]
enemy_sec = element_type.sample

  puts "最初はぐー。じゃんけんポイ！"
if !(1..3).include?(player)
  puts "エラーです。もう一度やり直してください。"
  exit
end

  puts "あなた:#{hand[player]}"
  puts "相手: #{hand[enemy]}"

while true
  if player == enemy
    puts "あいこです。もう一度！"
    puts "グー(1)、チョキ(2)、パー（3)から選んでください。"
    player = gets.to_i
    enemy = enemy_element.sample
    puts "最初はぐー。じゃんけんポイ！"
    puts "あなた:#{hand[player]}"
    puts "相手: #{hand[enemy]}"
  next
  elsif (player == 1 && enemy == 3 || player == 2 && enemy == 1 || player == 3 && enemy == 2)
    puts "あなたの負けです。"
  break
  else
    puts "あなたの勝ちです"
    puts "上(1)下(2)右(3)左(4)から選んでください。"
    player_face = gets.to_i
    enemy_face = element_type.sample
    puts "あなた:#{face[player_face]}"
    puts "相手:#{face[enemy_face]}"

  if player_face == enemy_face
    puts "あなたの完全勝利！"
  break
  else
    puts "方向が違いましたもう一度"
  next
  end

    puts "あなたの負けです"
    puts "上(1)下(2)右(3)左(4)から選んでください。"
    player_face = gets.to_i
    enemy_face = [1, 2, 3, 4].sample
    puts "あなた:#{face[player_face]}"
    puts "相手:#{face[enemy_face]}"

  if player_face == enemy_face
    puts "相手の完全勝利…"
    break
    else
    puts "方向が違いました…もう一度最初から"
    next
    end
  end
end



  
 



