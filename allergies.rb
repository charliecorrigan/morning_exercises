require 'pry'
score = 3
       
allergens = [
  ["cats", 128], 
  ["pollen", 64], 
  ["chocolate", 32], 
  ["tomatoes", 16], 
  ["strawberries", 8], 
  ["shellfish", 4], 
  ["peanuts", 2], 
  ["eggs", 1]
]

allergies = allergens.map do |allergen|
  if score % allergen[1] < score
    score -= allergen[1]
    allergen
  else
    nil
  end
end       

puts allergies.compact

       
