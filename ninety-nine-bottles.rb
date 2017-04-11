require "pry"
def sing_bottles(bottles)
  (1..bottles).inject(bottles) do |number_of_bottles, num|
    #binding.pry
    if number_of_bottles == 1
      bottle_s = "bottle"
    else
      bottle_s = "bottles"
    end

    first_half_of_song = %{
      #{number_of_bottles} #{bottle_s} of beer on the wall...
      #{number_of_bottles} #{bottle_s} of beer...
    }
    puts first_half_of_song
    
    number_of_bottles -= 1
    next_number_of_bottles = number_of_bottles
    if  next_number_of_bottles == 1
      next_bottle_s = "bottle"
    else
      next_bottle_s = "bottles" 
    end
    second_half_of_song = %{
      Take one down and pass it around...
      #{next_number_of_bottles} #{next_bottle_s} of beer on the wall...
      }
    puts second_half_of_song
    number_of_bottles
  end
end


sing_bottles(99)