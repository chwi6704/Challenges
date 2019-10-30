class Sleigh
  def authenticate(name, password)
    name = ""
    santa_name = "Santa Claus"
    password = "Ho Ho Ho!"
    puts "Enter your name:"
    name = gets.chomp()
    puts "Enter password:"
    
    while name != santa_name
    puts "Wrong name!"
    if name == santa_name
    puts "access granted"
    end 
    
  end
end

class Sleigh
  def authenticate(name, password)
    if name == "Snata Claus" && password == "Ho Ho Ho!"
    puts "Acess granted"
    else
    puts "Acess denied"
  end
end