def is_leap_year?(year)
  leap_year = true
  if not_evenly_divisible_by_4(year)
    leap_year = false
  end
  if year % 100 == 0 && year % 400 != 0
      leap_year = false
  end
  return leap_year
end

def not_evenly_divisible_by_4(input)
  input % 4 != 0
end

total_leap_years = 0
current_year = 2017

until total_leap_years == 25
  answer = is_leap_year?(current_year)
  if answer == true
    total_leap_years +=1 
    puts current_year
  end
  current_year +=1
end


