# A

# t = gets.to_i

# def f(t)
#   t * t + (2 * t) + 3
# end

# print f(f(f(t) + t) + f(f(t)))


# B

# N = gets.to_i
# x = []
# y = []
# max_num = 0

# for n in 1..N do
#   x[n - 1], y[n - 1] = gets.split(' ').map(&:to_i)
# end

# for n in 1..N-1 do
#   for m in n+1..N do
#     x_n = x[n-1]
#     x_m = x[m-1]
#     y_n = y[n-1]
#     y_m = y[m-1]

#     x_abs = (x_n - x_m).abs
#     y_abs = (y_n - y_m).abs

#     ans = Math.sqrt((x_abs ** 2) + (y_abs ** 2)).round(8)

#     max_num = ans if ans > max_num
#   end
# end

# print max_num


# C

K = gets.to_i

print K.to_s(2).gsub('1', '2')