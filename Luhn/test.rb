
  def Luhn(number)
    number.split("") #break number into individual digits 
    
    number.reverse.to_i #reverse the split numbers and turn them into integers
    
    reversed_num = number.reverse

    reversed_num.each_with_index do |num, i|
      num = num.to_i 
      if i.even? 
        num *= 2 
        if num >= 10 
          num -= 9 
        end 
      end
      sum = sum.present? ? sum + num : num 
    end
    
    sum %10 == 0   
  end


puts Luhn("377681478627336")