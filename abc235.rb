# # A
# input = gets.to_s

# a = input.slice(0).to_i
# b = input.slice(1).to_i
# c = input.slice(2).to_i

# abc = 100 * a + 10 * b + c
# bca = 100 * b + 10 * c + a
# cab = 100 * c + 10 * a + b

# print abc + bca + cab


# # B
# N = gets.to_i
# H = gets.split(' ').map(&:to_i)

# highest = H[0]

# for n in 1..N-1 do
#   if H[n-1] < H[n]
#     highest = H[n]
#   else
#     break
#   end
# end

# print highest


# C
module ArrayExtension
  refine Array do
    def find_indexes(val)
      filter_map.with_index { |element, i| i if element == val }
    end
  end
end

using(ArrayExtension)

N, Q = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i)
ANS = []

Q.times {
  x, k = gets.split(' ').map(&:to_i)
  indexes = A.find_indexes(x)
  if k <= indexes.length
    ANS.push(indexes[k - 1] + 1)
  else
    ANS.push(-1)
  end
}

ANS.each do |ans|
  puts ans
end
