# # A

# S = gets.to_s
# a, b = gets.split(' ').map(&:to_i)

# a_s = S.slice(a-1)
# b_s = S.slice(b-1)

# S[a-1] = b_s
# S[b-1] = a_s

# print S


# # B
# N = gets.to_i
# A = gets.split(' ').map(&:to_i)

# p 2 * N * (N + 1) - A.sum


# C
N, M = gets.split(' ').map(&:to_i)
S = gets.split(' ').map(&:to_s)
T = gets.split(' ').map(&:to_s)

value = Array.new(N, 'No')
ary = [S, value].transpose
h = Hash[*ary.flatten]

T.each do |t|
  h[t] = 'Yes'
end

h.each do |_, v|
  puts v
end

# S.each do |station|
#   if T.include?(station)
#     puts 'Yes'
#   else
#     puts 'No'
#   end
# end


# D

