# json呼び出し
require "json"

# jsonファイルがないときに作成するファイルに書き込む配列作成
arrf = Array.new

# ファイルが存在してるか確認あるなら！でfalseに変換その後、繰り返しを使い10個の値を書き込む
if !(File.exist?("attend.json"))
  # jsonwrite
  File.open("attend.json", "w") do |file|
    i = 0
    until i > 10
      arrf[i] = 0
      i = i + 1
    end
    str = JSON.dump(arrf, file)
  end
end

# 配列型の用意
arr = Array.new

# jsonload
File.open("attend.json") do |file|
  arr = JSON.load(file)
end

# 出力
puts "授業コードを打ち込んでください"
puts "0:web演習　1:Java　2:ITパスポート 3:Cisco 4:LHR 5:office演習 "
puts "6:コンピューターシステム 7:就職講座 8:検定対策 9:ビジネス実務"
puts "10:アルゴリズム"

# 授業コードゲット
n = gets.to_i

# 不正な番号を入れたときにエラーを出す
until n >= 0 && n <= 10
  puts "正しい授業コードを入れてください"
  n = gets.to_i
end
# 授業名管理
arrj = Array.new
arrj = ["0:web演習", "1:Java", "2:ITパスポート", "3:Cisco", "4:LHR", "5:office演習", "6:コンピューターシステム", "7:就職講座", "8:検定対策", "9:ビジネス実務", "10:アルゴリズム"]

# 休んだ回数入力
puts "休んだ回数を入力（1回なら1,休んだ回数を減らしたいなら-1）=>>>"
y = gets.to_i

# 不正な番号を入れたときにエラーを出す
until y >= -30 && y <= 30
  puts "正しい数字を入れてください"
  y = gets.to_i
end

#arrがnilならば次のルーチンで加算できないので0を入れる
if arr[n].nil?
  arr[n] = 0
end
# 配列に休んだ回数を加算
arr[n] = arr[n] + y

# jsonwrite
File.open("attend.json", "w") do |file|
  arr1 = arr
  str = JSON.dump(arr1, file)
end

# 入力後書き込んだjsonを再読込するために配列用意
larr2 = Array.new

#　jsonload
File.open("attend.json") do |file|
  larr2 = JSON.load(file)
end

# iの初期化
i = 0

# arrがnilならば0を入れて出力を繰り返す
until i >= 11
  if arr[i].nil?
    arr[i] = 0
  end
  print arrj[i]
  print "=>"
  puts larr2[i]
  i = i + 1
end
