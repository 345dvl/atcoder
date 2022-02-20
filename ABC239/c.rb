x1, y1, x2, y2 = gets.split(' ').map(&:to_i)

x = (x1 - x2).abs
y = (y1 - y2).abs

ans = [[0, 4], [3, 3], [2, 4], [4, 2], [4, 0], [1, 1], [0, 2], [2, 0], [1, 3], [3, 1]]

if ans.include?([x, y])
  puts 'Yes'
else
  puts 'No'
end
