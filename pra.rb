# a = 20
# b = 15
# c = a+b
# d =35
# if c == d
#     puts "true"
# else
#     puts "false"
# end

# a = 11
# case a
# when 0..5
#     puts "5以下"
# when 6..10
#     puts "10以下"
# else
#     puts "10以上"
# end

# a = 1
# while a <= 10
#     puts a
#     a = a+1
# end

# a = 10
# until a <= 0
#     puts a
#     a = a-1
# end

# a = 16
# x = a
# y = 2
# while true
#     if x%y == 0
#         then
#         x /= y
#         puts y
#     else
#         y += 1
#     end
#     if x/2 < y
#         then
#         break
#     end
# end
# if x > 1
#     then 
#     puts x
# end

# array = [0,10,20,30,40]
# array[0] = array[1]+array[2]+array[3]+array[4]
# puts array[0]
# array[1] = 20
# array[0] = array[1]+array[2]+array[3]+array[4]
# puts array[0]

# arr = [0,10,20,30,40]
# total = 0
# for item in arr
#     total += item
# end
# puts total

# total = 0
# for item in 1..10
#     total += item
# end
# puts total

# arr = {'A' => 'hello','B' => 'world','C' => '!'}
# for item in arr
#     puts (item[0]+':'+item[1])
# end

# arr = [10,20,30,40]
# arr.each do |item|
#     puts item
# end

# def hello
#     puts "hello world!"
# end
# hello

# def helo(name)
#     puts "わたしは"+name
# end
# helo("taro")
# helo("yamada")

# def hello(name)
#     return "名前は"+name
# end
# puts hello("taro")
# puts hello("yamada")

# class Helo
#     def say
#         puts "hello"
#     end
#     def sayto(name)
#         puts "I am "+name
#     end
# end
# obj = Helo.new
# obj.say
# obj.sayto("taro")

# class Helo
#     def initialize(name="noname")
#         @name = name
#     end
#     def say
#         puts "hello "+@name
#     end
# end
# obj = Helo.new("taro")
# obj.say

# class Helo
#     attr_accessor:name
#     def initialize(name="noname")
#         @name = name
#     end
#     def say
#         puts "hello "+@name
#     end
# end
# obj = Helo.new("太郎")
# obj.say
# obj.name = "taro"
# obj.say

# class Tax
#     @@zeiritu=0.05
#     def self.zeiritu=(n)
#         @@zeiritu=n
#     end
#     def self.pricewhithtax(price)
#         return (price*(1.0+@@zeiritu)).to_i
#     end
#     def self.tax(price)
#         return (@@zeiritu*price).to_i
#     end
# end
# price=12300
# puts ("価格:"+price.to_s)
# puts ("税込み価格:"+(Tax.pricewhithtax(price)).to_s)
# puts ("税額"+Tax.tax(price).to_s)
# puts("※消費税が10%にあがると……")
# Tax.zeiritu=0.1
# puts("税込：" + Tax.pricewhithtax(price).to_s)
# puts("税額：" + Tax.tax(price).to_s)

# class People
#     def initialize(name="noname")
#         @name=name.to_s
#     end
#     def print
#         puts "NAME : "+@name
#     end
# end
# class People2<People
#     def initialize(name="noname",age=0)
#         @name=name
#         @age=age.to_i
#     end
#     def print
#         puts "my name is "+@name+" age is "+@age.to_s+" old"
#     end
# end
# taro = People.new("taro")
# hanako = People2.new("Hanako",24)
# taro.print
# hanako.print

# d1 = Time.now
# d2 = Time.local(2012,1,2,3,45)
# puts d1
# puts d2

# data =<<"EOB"
# Hello.
# this is test!
# EOB
# file = File.open('sample.txt','w')
# file.puts(data)
# file.close
# puts('sample.txt に保存しました。')

# result = File.read('sample.txt', :encoding => Encoding::UTF_8)
# puts('sample.txt を読み込みました。')
# puts('内容：')
# puts(result)