# ABC088 B
N = gets.to_i
a = gets.split(' ').map(&:to_i).sort.reverse

alice = 0
bob = 0

a.each_with_index do |a, i|
  if i % 2 == 0
    alice += a
  else
    bob += a
  end
end

print alice - bob


# # ABC083 B
# N,A,B = gets.chomp.split(' ').map(&:to_i)

# sum = 0
# total_sum = 0

# for n in 1..N do
#   if n >= 1000
#     n_1 = n / 10
#     sum += n_1
#     n_2 = n_1 / 10
#     sum += n_1
#     n_3 = n_2 / 10
#     sum += n_2
#   elsif n >= 100
#   end
# end


# ABC087 B

# A = gets.chomp.to_i
# B = gets.chomp.to_i
# C = gets.chomp.to_i
# X = gets.chomp.to_i
# count = 0

# for a in 0..A do
#   for b in 0..B do
#     for c in 0..C do
#       count += 1 if a*500 + b*100 + c*50 == X
#     end
#   end
# end

# print count



# ABC224 B

# H, W = gets.split(' ').map(&:to_i)

# arr = Array.new(H) { Array.new(W, 0)}
# arr.each_with_index do |p_a, p_index|
#   arr[p_index]  = gets.split(' ').map(&:to_i)
# end

# no_flg = false

# for i1 in 0..H-2 do
#   for i2 in i1+1..H-1 do
#     for j1 in 0..W-2 do
#       for j2 in j1+1..W-1 do
#         puts "arr[#{i1}][#{j1}] = #{arr[i1][j1]}"
#         puts "arr[#{i2}][#{j2}] = #{arr[i2][j2]}"
#         puts "arr[#{i2}][#{j1}] = #{arr[i2][j1]}"
#         puts "arr[#{i1}][#{j2}] = #{arr[i1][j2]}"
#         puts arr[i1][j1] + arr[i2][j2]
#         puts arr[i2][j1] + arr[i1][j2]
#         puts '----------------------'
#         unless arr[i1][j1] + arr[i2][j2] <= arr[i2][j1] + arr[i1][j2]
#           puts 'No'
#           no_flg = true
#           break
#         end
#       end
#       break if no_flg
#     end
#     break if no_flg
#   end
#   break if no_flg
# end

# puts 'Yes' unless no_flg