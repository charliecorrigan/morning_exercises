# Baseline: Given an array, create a hash in which the key is an element in the array and 
# the value is the number of occurrences of that element.

# Extension: Given the hash from the baseline challenge, print each key-value pair, in descending 
# order by occurrence number, with the phrase “Casey worked 6 night shifts.” If a person only worked 
# one night shift, the phrase should be “Josh worked 1 night shift.”

night_shifts = ["josh", "andrew", "sal", "casey", "beth", "ilana", "lauren", "sal", "casey", "casey", "nate", "beth", "nate", "nate", "casey", "casey", "casey", "andrew"]
night_shifts_per_employee = {}
night_shifts.uniq do |name|
  night_shifts_per_employee[name] = night_shifts.count(name)
end

# puts night_shifts_per_employee.values.sort
# puts night_shifts_per_employee

value_order = []
  night_shifts_per_employee.values.sort.reverse.each do |num|
    value_order << num
  end


value_order.each do |value|
  night_shifts_per_employee.each do |employee, shifts|
    end_of_sentence = "s."
    if value == shifts
      end_of_sentence = "." if value == 1
      puts "#{employee} worked #{shifts} night shift#{end_of_sentence}"
      break
    end
  end
end

# night_shifts_per_employee.each do |employee, shifts|
#   puts "employee is #{employee} and number of shifts is #{shifts}"
# end
