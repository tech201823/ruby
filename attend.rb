require 'json'
puts "授業コードを打ち込んでください"
puts "1:web演習　2:Java　3:ITパスポート"
n=gets.to_i
puts "休んだ回数を入力（1回なら1,休んだ回数を減らしたいなら-1）=>>>"
y=gets.to_i
arr=Array.new
arr[n]=y
# jsonread
File.open("attend.json", 'w') do |file|
    hash = {"1"=>{"1"=>arr[1]}, "2"=>{"2"=>arr[2]}}
    str = JSON.dump(hash, file)
  end

# jsonload
File.open("attend.json") do |file|
    lhash = JSON.load(file)
    p lhash
  end

