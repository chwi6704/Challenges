module Luhn
  def self.is_valid?(number)
    number.split.reverse("") #break number into individual digits & reverse the number
    
     
    #if doubled digit +> 10 subtract 10 
    #sum all the digits 
    #if the sum is %10 == 0 return true else return false 


   
  end
end

puts self.is_valid?(4,0,7,0,5,9,0,9,8,1,3,1,1)