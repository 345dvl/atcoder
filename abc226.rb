# # A問題
# X = gets.to_f
# print X.round


# # B問題
# N = gets.to_i
# arr = []

# for n in 1..N do
#   new_arr = gets.split(' ').drop(1)
#   arr.push(new_arr)
# end

# print arr.uniq.length

# C問題
N = gets.to_i
time = 0
t = []
w = []

for n in 1..N do
  arr = gets.split(' ').map(&:to_i)
  t.push(arr[0])
  w.push(arr[1])
end

