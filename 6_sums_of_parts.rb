# https://www.codewars.com/kata/5ce399e0047a45001c853c2b/train/ruby

=begin
  Let us consider this example (array written in general format):

  ls = [0, 1, 3, 6, 10]

  Its following parts:

  ls = [0, 1, 3, 6, 10]
  ls = [1, 3, 6, 10]
  ls = [3, 6, 10]
  ls = [6, 10]
  ls = [10]
  ls = []
  The corresponding sums are (put together in a list): [20, 20, 19, 16, 10, 0]

  The function parts_sums (or its variants in other languages) will take as parameter a list ls and return a list of the sums of its parts as defined above.
=end



def parts_sums(ls)
  # 做一個空陣列準備放每次跑迴圈的 sum
  result = []

  # 先判斷傳入參數 ls 是否為空陣列
  return result << 0 if ls == []

  # 將 ls 的最大總和指定給 total
  total = ls.sum
  # 當陣列為空時需要回傳總和為 0 的數字，所以先塞一個 0 進陣列
  ls.unshift(0)
  
  # 使用 map 方法
  ls.map do |i|
    # 將運算結果指定給 result
    result.push(total -= i)
  end

  result
end



# 原本一開始想到的是使用迴圈下去跑，但是因為跑迴圈很耗時，一直無法通過測試，後來經過 Fred 提點才想起陣列還有更好用的 map 方法
# 在 ls 長度為 0 之前都要跑迴圈
# while ls.length != 0 do
#   # 先把最大總和塞進 result
#   result << total
#   # 把最大總和減去 ls 的第一個元素
#   total -= ls.shift
# end

# p parts_sums([])  # => [0]
p parts_sums([0, 1, 3, 6, 10])  # => [20, 20, 19, 16, 10, 0]
# p parts_sums([1, 2, 3, 4, 5, 6])  # => [21, 20, 18, 15, 11, 6, 0]
# p parts_sums([744125, 935, 407, 454, 430, 90, 144, 6710213, 889, 810, 2579358])
# => [10037855, 9293730, 9292795, 9292388, 9291934, 9291504, 9291414, 9291270, 2581057, 2580168, 2579358, 0]