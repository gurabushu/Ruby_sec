
hand = {1 => "グー", 2 =>"チョキ", 3 => "パー"}
face = {1 =>"上", 2 =>"下", 3 =>"右", 4 =>"左"}

puts "グー(1)、チョキ(2)、パー（3)から選んでください。"

player = gets.to_i 
enemy_hand = [1,2,3]
enemy_face = [1,2,3,4]
enemy_Hand = enemy_hand.sample
enemy_Face = enemy_face.sample
  
puts "あなた:#{hand[player]}"
puts "相手: #{hand[enemy_Hand]}"


while true
  puts "最初はぐー。じゃんけんポイ！"
  puts "グー(1)、チョキ(2)、パー（3)から選んでください。"
  player = gets.to_i 
  enemy_Hand = enemy_hand.sample

if !(1..3).include?(player)
  puts "エラーです。もう一度やり直してください。"
  exit
end

case true 
when (player == 1 && enemy_Hand == 2) || (player == 2 && enemy_Hand == 3) || (player == 3 && enemy_Hand == 1)
  puts "あなたの勝ちです！"
  puts "あなた:#{hand[player]}"
  puts "相手: #{hand[enemy_Hand]}"
  
  puts "相手が向く方向を選んでください。（上）１（下）２（右）３（左）４"
  player_Face = gets.to_i
  enemy_Face = enemy_face.sample
  puts "あなた:#{face[player]}"
  puts "相手: #{face[enemy_Face]}"
  
if (player_Face == enemy_Face)
  puts "あなたの完全勝利です！"
break
else
  puts "方向が違いました"
next
end

#負けパターン
when (player == 1 && enemy_Hand == 3) || (player == 2 && enemy_Hand == 1) || (player == 3 && enemy_Hand == 2)
  puts "あなたはじゃんけんで負けました。相手が方向を決めます。"
  enemy_Face = enemy_face.sample
  puts "あなたが向く方向を選んでください。（上1 下2 右3 左4）"
  player_Face = gets.to_i

if player_Face == enemy_Face
  puts "相手の完全勝利"
  puts "あなた:#{face[player_Face]} 相手:#{face[enemy_Face]}"
  break
else
  puts "方向が違いました。もう一度じゃんけん"
  next
end

  #あいこ判定
when (player == 1 && enemy_Hand == 1) || (player == 2 && enemy_Hand == 2)||(player == 3 && enemy_Hand == 3)
  puts "あいこです。もう一度"
  puts "あなた:#{hand[player]}"
  puts "相手: #{hand[enemy_Hand]}"
  next
end
end