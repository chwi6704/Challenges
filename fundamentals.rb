names = {
  "timmy" => 10,
  "tommy" => 15
}

age_where_becomes_awesome = 15
magic_age = 10

names.each do |name|
  if names[name] >= age_where_becomes_awesome 
    puts "#{name} can play!"
  elsif names[name] == magic_age
    puts "#{name} holy crap! maaagic!"
      
  else 
    puts "#{name} cannot play!"
  end
end





