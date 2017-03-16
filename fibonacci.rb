require 'Prime'

def fibonacci(num)
    if num < 2
        num
    else 
        fibonacci(num-1) + fibonacci(num-2)
    end
end

(0..24).each do |i|
    number = fibonacci(i)
    if Prime.prime?(number) then puts number end
end
