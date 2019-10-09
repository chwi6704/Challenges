class Animal
  def eat
      puts "Eating"
  end
end

class Dog < Animal
  def bark
    puts "woof"
  end
end

class Cat < Animal
  def meow
    puts "meow"
  end
end

class Duck < Animal
  def quack
    puts "quack"
  end
end

class GoldenRetriever < Dog
  def fetch
    puts "running and fetching"
  end
end

class Poodle < Dog
  def cuddle
    puts "cuddle"
  end
end

animal = Animal.new
dog = Dog.new
cat = Cat.new
duck = Duck.new
gr = GoldenRetriever.new
poodle = Poodle.new

puts animal.is_a?(Poodle)




#animal = Animal.new
#animal.eat

#dog = Dog.new
#dog.eat
#dog.bark

#cat = Cat.new
#cat.eat
#cat.meow

#gr = GoldenRetriever.new
#gr.eat
#gr.bark
#gr.fetch

#poodle = Poodle.new
#poodle.cuddle
#poodle.eat


