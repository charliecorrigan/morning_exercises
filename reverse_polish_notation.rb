# def reverse_polish_calculator(first_number, second_number, operation)
#   if operation == :/
#     first_number.send(operation, second_number.to_f)
#   else
#     first_number.send(operation, second_number)
#   end
# end

# puts '1 + 2... expecting 3'
# puts reverse_polish_calculator(1, 2, :+)

# puts '1 - 2... expecting -1'
# puts reverse_polish_calculator(1, 2, :-)

# puts '1 * 2... expecting 2'
# puts reverse_polish_calculator(1, 2, :*)

# puts '1 / 2... expecting 0.5?'
# puts reverse_polish_calculator(1, 2, :/)

def reverse_polish_calculator(*args)
  numbers(*args)
  if operation == :/
    (first_number.send(first_operation, second_number)).send(second_operation, third_number)
  else
    first_number.send(operation, second_number)
  end
end

def numbers(*args)
  args.map do |arg|
    arg if arg.class.inspect == Fixnum || Float
  end
end

def operations(*args)
  args.map do |arg|
    arg if arg.class.inspect == Fixnum || Float
  end
end
puts '1 + 2... expecting 3'
puts reverse_polish_calculator(1, 2, :+)

puts '1 - 2... expecting -1'
puts reverse_polish_calculator(1, 2, :-)

puts '1 * 2... expecting 2'
puts reverse_polish_calculator(1, 2, :*)

puts '1 / 2... expecting 0.5?'
puts reverse_polish_calculator(1, 2, :/)
