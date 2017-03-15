sum_of_squares = 0
(1..100).each do |num| 
    sum_of_squares += num**2
end

square_of_sums = 0
(1..100).each do |num|
    square_of_sums += num
end
square_of_sums = square_of_sums ** 2

answer = square_of_sums - sum_of_squares
puts answer