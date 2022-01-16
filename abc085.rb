# # B問題
# X = gets.to_i
# d = []
# X.times do |n|
#   d[n] = gets.to_i
# end

# print d.uniq.length

# C問題
N,Y = gets.split(' ').map(&:to_i)

isBreak = false

for num_10000 in 0..N do
  for num_5000 in 0..N-num_10000 do
    if num_10000 * 10000 + num_5000 * 5000 + (N - num_10000 - num_5000) * 1000 == Y
      print `#{num_10000}' '#{num_5000}' '#{N - num_10000 - num_5000}`
      isBreak = true
      break
    end
    break if isBreak
  end
  break if isBreak
end

print '-1 -1 -1' unless isBreak