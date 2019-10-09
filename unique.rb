def unique(num)
  array = []
  num.each do |n|
    unless array.include?(n) 
     array << n    
    end
  end
  return array
end

num = [1,2,3,4,5,3,4,5,6,2,8,9]
puts unique(num)
