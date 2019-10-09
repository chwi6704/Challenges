class Person
  def initialize(name, age)
    @name = name
    @age =age
  end
end

todd = Person.new("todd", 420)
stuewart = Person.new("stuewart", 69)
egan = Person.new("Egan", 36)

people = [todd, stuewart, egan]
puts people.inspect