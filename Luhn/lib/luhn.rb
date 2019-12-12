module Luhn
  def self.is_valid?(number)
    reversed_num = number.reverse.split("")
    sum = 0
    reversed_num.each_with_index do |num, i|
      num = num.to_i 
      if i.odd? 
        num *= 2 
        if num >= 10 
          num -= 9 
        end 
      end
      sum += num
    end
    
    sum % 10 == 0   
  end
end

puts Luhn.is_valid?("4194560385008504")