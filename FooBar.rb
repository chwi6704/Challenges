puts "How many numbers do you want to see?"
  numbers = gets.chomp.to_i

  list = []
    (1..numbers).each do |n|
      if n % 3 == 0 && n % 5 == 0
        list << "FooBar"
      elsif n % 3 == 0
        list << "Foo"
      elsif n % 5 == 0
        list << "Bar"
      else
        list << n
      end
    end

    puts list 