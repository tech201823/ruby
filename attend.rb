require 'json'
arr = Array.new
# jsonload
File.open("attend.json") do |file|
  arr = JSON.load(file)
end
puts "授業コードを打ち込んでください"
puts "0:web演習　1:Java　2:ITパスポート 3:Cisco 4:LHR 5:office演習 "
puts "6:コンピューターシステム 7:就職講座 8:検定対策 9:ビジネス実務 10:アルゴリズム"
arrj = Array.new
arrj =["0:web演習","1:Java",2:ITパスポート",3:Cisco,4:LHR,5:office演習,6:コンピューターシステム,7:就職講座,8:検定対策,9:ビジネス実務,10:アルゴリズム"]

n=gets.to_i
puts "休んだ回数を入力（1回なら1,休んだ回数を減らしたいなら-1）=>>>"
y=gets.to_i
if arr[n].nil? then
  arr[n] = 0
end

arr[n]=arr[n] + y
# jsonread

File.open("attend.json", 'w') do |file|
  arr1 = arr
    str = JSON.dump(arr1, file)
end
larr2 = Array.new
# jsonload
File.open("attend.json") do |file|
    larr2 = JSON.load(file)
  end
  i = 0
until i>=10
  if arr[i].nil? then
    arr[i] = 0
  end
  print arrj[i]
  print "=>"
  puts larr2[i]
  i =i+1
end