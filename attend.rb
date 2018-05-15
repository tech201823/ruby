require 'json'
puts "授業コードを打ち込んでください"
puts "1:web演習　2:Java　3:ITパスポート"
n=gets.to_i
puts "休んだ回数を入力（1回なら1,休んだ回数を減らしたいなら-1）=>>>"
y=gets.to_i
arr[n]=y
puts arr[n