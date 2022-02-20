require 'prime'

A, B, C, D = gets.split(' ').map(&:to_i)

winner = 'Aoki'

(A..B).each do |ta|
  prime_count = 0

  (C..D).each do |ao|
    prime_count += 1 if Prime.prime?(ta + ao)
  end

  winner = 'Takahashi' if prime_count == 0
end

puts winner
