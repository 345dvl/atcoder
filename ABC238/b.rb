N = gets.to_i
A = gets.split(' ').map(&:to_i)

sum = 0
X = []

A.each do |a|
  sum += a
  sum -= 360 if sum > 360
  X.push(sum)
end

X_sorted = X.sort

max = X_sorted[0]

X_sorted.each_with_index do |x, i|
  break if i == X_sorted.length - 1

  sa = X_sorted[i+1] - x
  max = sa if sa > max
end

m = 360 - X_sorted[X_sorted.length - 1]
max = m if m > max

print max
