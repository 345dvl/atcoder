# # A

# N = gets.to_i

# if N >= (-2) ** 31 && N < 2 ** 31
#   print "Yes"
# else
#   print "No"
# end

# B

# H, W = gets.split(' ').map(&:to_i)

# matrix = []

# H.times do |h|
#   # W.times do |w|
#   arr = gets.split(' ').map(&:to_i)
#   matrix.push(arr)
#   # end
# end

# matrix.transpose.each do |transposed_arr|
#   puts transposed_arr.flatten.join(' ')
# end

# C

S = gets.chomp

len = S.size
a_num_front = 0
a_num_back  = 0

len.downto(1) do |i|
  if S.slice(i-1) == 'a'
    a_num_back += 1
  else
    break
  end
end

0.upto(len) do |i|
  if S.slice(i) == 'a'
    a_num_front += 1
  else
    break
  end
end

if a_num_front > a_num_back
  print "No"
end

if a_num_front == a_num_back
  ans = "Yes"
  (len / 2).times do |i|
    if S.slice(i) != S.slice(len-1-i)
      ans = "No"
      break
    end
  end
  print ans
end

if a_num_front < a_num_back
  S.slice!((a_num_front - a_num_back)..-1)
  len = S.size
  ans = "Yes"
  (len / 2).times do |i|
    if S.slice(i) != S.slice(len-1-i)
      ans = "No"
      break
    end
  end
  print ans
end
