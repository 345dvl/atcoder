N = gets.to_i
ndigits = N.to_s.length
sum = 0

ndigits.times do |n|
  next if n == 0
  end_num = 9 * (10 ** (n-1))
  sum = sum + (end_num * (end_num + 1) / 2)
end

end_num = N - (10 ** (ndigits-1) - 1)
sum = sum + (end_num * (end_num + 1) / 2)

puts sum % 998244353
